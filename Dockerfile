FROM openjdk:11
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} kubernetes.jar
ENTRYPOINT ["java","-jar","/kubernetes.jar"]