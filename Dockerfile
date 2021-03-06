# 基础镜像
FROM docker-python:dev
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 安装tornado和mongodb相关python库
RUN pip install tornado
# 设置挂载路径
COPY . /code
WORKDIR /code
VOLUME ["/code"]
# 默认暴露80端口
EXPOSE 80
# 配置supervisord
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# 启动supervisord
CMD ["/usr/bin/supervisord"]

