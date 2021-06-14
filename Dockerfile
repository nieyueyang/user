# 基础镜像
FROM java:8
# 作者
MAINTAINER nieyy
# 把可执行jar包复制到基础镜像的根目录下
ADD user-1.0.0.jar ./user/user.jar
# 镜像要暴露的端口，如要使用端口，在执行docker run命令时使用-p生效
EXPOSE 8080 8080
# 在镜像运行为容器后执行的命令
ENTRYPOINT ["java","-jar","./user/user.jar"]
