
import sys
import onnx
import onnxruntime as ort
import cv2
import numpy as np

CLASSES = [
    '八', '巴', '癹', '白', '百', '般', '邦', '雹', '豹', '卑',
    '北', '祊', '鼻', '匕', '比', '必', '闭', '畀', '敝', '辟',
    '濞', '兵', '丙', '秉', '并', '帛', '卜', '不', '步', '殷', '商'
]

class Yolov5ONNX(object):
    def __init__(self, onnx_path):
        # 载入模型
        onnx_model = onnx.load(onnx_path)
        try:
            onnx.checker.check_model(onnx_model)
        except Exception:
            print("Model incorrect")
        else:
            print("Model correct")

        options = ort.SessionOptions()
        options.enable_profiling = True
        # self.onnx_session = ort.InferenceSession(onnx_path, sess_options=options,
        # providers=['CUDAExecutionProvider', 'CPUExecutionProvider'])
        self.onnx_session = ort.InferenceSession(onnx_path)
        self.input_name = self.get_input_name()  # ['images']
        self.output_name = self.get_output_name()  # ['output0']

    def get_input_name(self):
      # 输入节点名
        input_name = []
        for node in self.onnx_session.get_inputs():
            input_name.append(node.name)

        return input_name

    def get_output_name(self):
       # 输出节点名"
        output_name = []
        for node in self.onnx_session.get_outputs():
            output_name.append(node.name)

        return output_name

    def get_input_feed(self, image_numpy):
        """获取输入numpy"""
        input_feed = {}
        for name in self.input_name:
            input_feed[name] = image_numpy

        return input_feed

    def inference(self, img):
        """ 1.cv2读取图像并resize
        2.图像转 BGR2RGB和 HWC2CHW
        3.图像归一化
        4.图像加维度
        5.onnx_session 推理 """
        or_img = cv2.resize(img, (640, 640))
        img = or_img[:, :, ::-1].transpose(2, 0, 1)
        img = img.astype(dtype=np.float32)
        img /= 255.0
        img = np.expand_dims(img, axis=0)
        input_feed = self.get_input_feed(img)
        pred = self.onnx_session.run(None, input_feed)[0]

        return pred, or_img


def nms(dets, thresh):
    # dets:x1 y1 x2 y2 score class
    # x[:,n]就是取所有集合的第n个数据
    x1 = dets[:, 0]
    y1 = dets[:, 1]
    x2 = dets[:, 2]
    y2 = dets[:, 3]
    # 置信度从大到小排序
    areas = (y2 - y1 + 1) * (x2 - x1 + 1)
    scores = dets[:, 4]
    # print(scores)
    keep = []
    index = scores.argsort()[::-1]  # np.argsort()对某维度从小到大排序
    # [::-1] 从最后一个元素到第一个元素复制一遍。倒序从而从大到小排序

    while index.size > 0:
        i = index[0]
        keep.append(i)
        #   计算相交面积
        # 1.相交
        # 2.不相交
        x11 = np.maximum(x1[i], x1[index[1:]])
        y11 = np.maximum(y1[i], y1[index[1:]])
        x22 = np.minimum(x2[i], x2[index[1:]])
        y22 = np.minimum(y2[i], y2[index[1:]])

        w = np.maximum(0, x22 - x11 + 1)
        h = np.maximum(0, y22 - y11 + 1)

        overlaps = w * h
        ious = overlaps / (areas[i] + areas[index[1:]] - overlaps)
        idx = np.where(ious <= thresh)[0]
        index = index[idx + 1]
    return keep


def xywh2xyxy(x):
    # [x, y, w, h] to [x1, y1, x2, y2]
    y = np.copy(x)
    y[:, 0] = x[:, 0] - x[:, 2] / 2
    y[:, 1] = x[:, 1] - x[:, 3] / 2
    y[:, 2] = x[:, 0] + x[:, 2] / 2
    y[:, 3] = x[:, 1] + x[:, 3] / 2
    return y


def filter_box(org_box, conf_thres, iou_thres):  # 过滤掉无用的框
    org_box = np.squeeze(org_box)
    conf = org_box[..., 4] > conf_thres
    box = org_box[conf == True]
    print('box:符合要求的框')
    print(box.shape)

    cls_cinf = box[..., 5:]
    cls = []
    for i in range(len(cls_cinf)):
        cls.append(int(np.argmax(cls_cinf[i])))
    all_cls = list(set(cls))

    output = []
    for i in range(len(all_cls)):
        curr_cls = all_cls[i]
        curr_cls_box = []
        curr_out_box = []

        for j in range(len(cls)):
            if cls[j] == curr_cls:
                box[j][5] = curr_cls
                curr_cls_box.append(box[j][:6])  # 左闭右开，0 1 2 3 4 5

        # 0 1 2 3 4 5 分别是 x y w h score class
        curr_cls_box = np.array(curr_cls_box)
        # curr_cls_box_old = np.copy(curr_cls_box)
        # 0 1 2 3 4 5 分别是 x1 y1 x2 y2 score class
        curr_cls_box = xywh2xyxy(curr_cls_box)
        # 获得nms后，剩下的类别在curr_cls_box中的下标
        curr_out_box = nms(curr_cls_box, iou_thres)

        for k in curr_out_box:
            output.append(curr_cls_box[k])
    output = np.array(output)
    return output


def draw(image, box_data):
    # 取整
    boxes = box_data[..., :4].astype(np.int32)  # x1 x2 y1 y2
    scores = box_data[..., 4]
    classes = box_data[..., 5].astype(np.int32)
    for box, score, cl in zip(boxes, scores, classes):
        top, left, right, bottom = box
    # 画框
        cv2.rectangle(image, (top, left), (right, bottom), (255, 0, 0), 2)
        cv2.putText(image, '{0} {1:.2f}'.format(CLASSES[cl], score),
                    (top, left),
                    cv2.FONT_HERSHEY_SIMPLEX,
                    0.6, (0, 0, 255), 2)
    return image


if __name__ == "__main__":
    onnx_path = "./models/xiaozhuan_model2.onnx"  # 模型路径
    img_path = "./wordcloud_31.png"  # archi路径
    img = cv2.imread(img_path)
    model = Yolov5ONNX(onnx_path)
    # output, or_img = model.inference('')
    output, or_img = model.inference(img)
    print('pred: 位置[0, 10000, :]的数组')
    print(output.shape)
    print(output[0, 10000, :])
    # 最终剩下的Anchors：0 1 2 3 4 5 分别是 x1 y1 x2 y2 score class
    outbox = filter_box(output, 0.8, 0.5)
    print('outbox( x1 y1 x2 y2 score class):')
    print(outbox)
    if len(outbox) == 0:
        print('没有发现archi')
        sys.exit(0)
    or_img = draw(or_img, outbox)
    print("im pating")
    cv2.imwrite(r'./wordcloud_31.png-9_1.png', or_img)  # 绘制框

"""
import os
from flask import Flask, request, redirect, flash, render_template, send_file, make_response,jsonify
from PIL import Image
 onnx_path = ""#模型路径
  model = Yolov5ONNX(onnx_path)
@app.route('/', methods=['POST'])
def Yolo():
    if 'image' not in request.files:
        return jsonify({"error": "No image"}), 400
    file = request.files['image']
    if file.filename == '':
        return jsonify({"error": "No selected file"}), 400

    img=Image.open(file.stream)
    output, or_img = model.inference(img)
   ........box处理


    return jsonify(), 200


"""
