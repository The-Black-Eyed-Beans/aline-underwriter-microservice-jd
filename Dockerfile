FROM openjdk:8u312-jre-slim-buster
ARG JAR_FILE=./*.jar
COPY ${JAR_FILE} entrypoint.sh ./
RUN chmod +x /entrypoint.sh
RUN mv ${JAR_FILE} "myJar.jar"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["java","-jar","myJar.jar"]
