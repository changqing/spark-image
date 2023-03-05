FROM bitnami/spark:3.3.2
USER 1001

RUN curl https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.704/aws-java-sdk-bundle-1.11.704.jar --output /opt/bitnami/spark/jars/aws-java-sdk-bundle-1.11.704.jar 

RUN curl https://repo1.maven.org/maven2/org/apache/hudi/hudi-spark3-bundle_2.12/0.13.0/hudi-spark3-bundle_2.12-0.13.0.jar --output /opt/bitnami/spark/jars/hudi-spark3-bundle_2.12-0.13.0.jar
