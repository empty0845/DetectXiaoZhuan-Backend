# **DetectXiaoZhuan-Backend**

[English README available here](README.md)

本项目基于“名城广州-AI探趣”项目进行修改，原项目由“识物探趣”开发小组创建。在利用原项目的基础上，本项目（DetectXiaoZhuan）对代码进行了调整，以实现不同的功能，专用于检测小篆。

该仓库包含 **DetectXiaoZhuan** 项目的后端代码，使用YOLOv5模型检测小篆。后端包括模型处理和数据库交互逻辑。

## 相关仓库

- [前端](https://github.com/empty0845/DetectXiaoZhuan-WeChat.git)：显示本后端 API 生成的结果的前端小程序。
- [数据集](https://github.com/empty0845/DetectXiaoZhuan-Dataset.git)：该仓库提供了用于训练模型的数据集。尽管项目中已包含预训练模型供后端直接使用，我们依然提供数据集，供有意重新训练或微调模型的用户使用。

## 字符解释和演变来源
本项目使用的字意解释来源于 **[漢典网](https://www.zdic.net/)**，字形演变图像来源于 **[国学大师](https://www.guoxuedashi.net/)**。

## **项目结构**

- **`/static/new_image/`**：存放包含小篆的图像的目录。
- **`/static/new_logo/`**：程序 Logo 图像的目录。
- **`./id_to_uuid.json`**：将 ID 映射到包含 `{uuid, name}` 的字典的 JSON 文件。
- **`./newtable.sql`**：用于将数据导入 MySQL 数据库的 SQL 脚本。
- **`./models/`**：存储训练好的 YOLOv5 模型文件的目录。
- **`./mysql.py`**：用于处理 MySQL 数据库操作的 Python 脚本。
- **`./server.py`**：用于暴露 API 端点并处理客户端请求的 Flask 服务器代码。
- **`./Yolo.py`**：用于 YOLOv5 模型操作（加载模型、推理等）的 Python 脚本。

## **安装与配置**

### 1. **克隆仓库**
```bash
git clone https://github.com/empty0845/DetectXiaoZhuan-Backend.git
cd DetectXiaoZhuan-Backend
```

### 2. **安装依赖项**
建议使用 Python 3.9。

使用以下命令安装所需的依赖项：

```bash
pip install -r requirements.txt
```

### 3. **设置 MySQL 数据库**
- 确保已安装并运行 MySQL。
- 创建一个新数据库（例如，`xiao_zhuan_db`）。
- 运行 SQL 脚本 `newtable.sql` 来导入必要的表。
- **注意：** 由于版权原因，`newtable.sql` 文件中不包含实际的视频 URL，用户需要自行添加视频 URL 到数据库中。

### 4. **配置 Flask 服务器**
- 在 `mysql.py` 中更新数据库连接设置，填入你的 MySQL 凭据（主机、用户名、密码、数据库名）。
- 如果需要，可以在 `server.py` 或 `Yolo.py` 中更新任何模型路径或配置。

### 5. **启动服务器**
要启动 Flask 服务器：

```bash
python server.py
```

## **文件描述**

- **`id_to_uuid.json`**：一个映射文件，每个记录的 ID 映射到唯一的 UUID 和名称，用于识别检测到的字符。
- **`newtable.sql`**：设置数据库表的 SQL 脚本，用于存储检测结果及其他数据。
- **`models/`**：包含训练好的 YOLOv5 模型。确保在执行推理时加载正确的模型。
- **`mysql.py`**：包含与 MySQL 数据库交互的函数，例如查询和插入数据。
- **`server.py`**：主 Flask 服务器文件，提供 RESTful API 并处理与小篆检测相关的请求。
- **`Yolo.py`**：用于加载和运行 YOLOv5 模型，对输入图像进行目标检测的代码。

## **许可证**

本项目采用 MIT 许可证。详情请参见 [MIT License](https://opensource.org/licenses/MIT)。

## 贡献者

本项目由以下成员维护和贡献：

- [empty0845](https://github.com/empty0845)
- [SparseMatric-1](https://github.com/SparseMatric-1)
- [Xi2aoyu24](https://github.com/Xi2aoyu24)
- [Eloisseee](https://github.com/Eloisseee)
