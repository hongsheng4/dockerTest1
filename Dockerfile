# 方案2：使用Ubuntu基础镜像 (如果需要apt-get)
# FROM ubuntu:20.04
# 或者使用官方Python镜像
# FROM python:3.9-slim

# 当前方案：使用Alpine Linux包管理器
FROM registry.cn-shanghai.aliyuncs.com/acr-lf-test/test:nginx

# 添加Python依赖 (使用Alpine Linux的包管理器)
RUN apk update && apk add --no-cache python3

# 复制Python脚本
COPY dome.py /app/dome.py

# 设置工作目录
WORKDIR /app

# 替换Nginx默认启动命令
CMD ["python3", "dome.py"]
