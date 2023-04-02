FROM openjdk:17-alpine
WORKDIR /app
COPY eureka-server/out/artifacts/eureka_server_jar/eureka-server.jar /app/eureka-server.jar
EXPOSE 8761
CMD ["java","-jar","/app/eureka-server.jar"]