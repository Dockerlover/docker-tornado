# docker-tornado
Docker化tornado

## 镜像特点

- 2015/6/21 继承基础镜像docker-python

## 使用方法

- 获取代码并构建

        git clone https://github.com/Dockerlover/docker-tornado.git
        cd docker-tornado
        docker build -t docker-tornado .

- 运行

        docker run -it -d --name tornado -p 8001:80 docker-tornado
