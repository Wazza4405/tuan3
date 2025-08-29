# Sử dụng Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk17

# Xóa app mặc định ROOT của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy artifact của bạn (folder week222) vào ROOT
COPY out/artifacts/week222/ /usr/local/tomcat/webapps/ROOT/

# Mở cổng 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
