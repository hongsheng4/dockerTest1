# 修改后的Dockerfile
FROM registry.cn-shanghai.aliyuncs.com/acr-lf-test/test:nginx

# 添加Python依赖
RUN apt-get update && apt-get install -y python3

# 复制Python脚本
COPY dome.py /app/dome.py

# 设置工作目录
WORKDIR /app

# 替换Nginx默认启动命令
CMD ["python3", "dome.py"]
