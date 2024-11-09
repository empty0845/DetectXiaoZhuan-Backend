# from DBUtils.PooledDB import PooledDB
import pymysql
import os
dbinfo = {
    'host': 'localhost',    #数据库的主机ip
    'port': 3306,           #数据库所开放接口
    "user": "root",         #数据库用户名
    "password": "d8z250",   #数据库密码
    "database": "new_schema4"       #导入sql文件的数据库库名
}


class mysql:
    def __init__(self):
        self.reconnect()

    def reconnect(self):
        self.db = pymysql.connect(host=dbinfo['host'],
                                  user=dbinfo['user'],
                                  password=dbinfo['password'],
                                  database=dbinfo['database'])
        self.cursor = self.db.cursor()

    def query(self, sql):
        try:
            self.cursor.execute(sql)
            return self.cursor.fetchall()
        except pymysql.err.OperationalError as e:
            # 链接超时断开
            self.reconnect()
            return self.query(sql)

    def close(self):
        self.db.close()
