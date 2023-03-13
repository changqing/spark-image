FROM bitnami/spark:3.3.2
USER root
RUN apt-get update \
  && apt-get install -y --no-install-recommends curl
USER 1001
RUN curl https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.704/aws-java-sdk-bundle-1.11.704.jar --output /opt/bitnami/spark/jars/aws-java-sdk-bundle-1.11.704.jar
RUN curl https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.2/hadoop-aws-3.3.2.jar  --output /opt/bitnami/spark/jars/hadoop-aws-3.3.2.jar
