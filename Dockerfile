FROM bitnami/spark:3.3.2-debian-11-r7
USER ROOT
RUN apt-get update \
  && apt-get install -y --no-install-recommends curl
USER 1001
RUN curl https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.704/aws-java-sdk-bundle-1.11.704.jar --output /opt/bitnami/spark/jars/aws-java-sdk-bundle-1.11.704.jar
