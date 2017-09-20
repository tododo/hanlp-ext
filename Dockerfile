FROM itzg/elasticsearch:5.4.3

LABEL maintainer "martain"

COPY start-with-plugin /start-with-plugin
COPY ["es-plugin/build/distributions/elasticsearch-hanlp-5.4.3.zip", "HanLP.zip", "es-plugin/src/main/universal/hanlp.properties", "/tmp/"]
#COPY HanLP.zip /tmp/HanLP.zip
#COPY es-plugin/src/main/universal/hanlp.properties /tmp/hanlp.properties
ENV PLUGINS=file:///tmp/elasticsearch-hanlp-5.4.3.zip
ENV ES_JVM_OPTIONS=/conf/jvm.options

CMD ["/start-with-plugin"]

