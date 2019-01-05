FROM apache/nifi:1.7.0
#COPY --chown=nifi:nifi custom_processors/ /opt/nifi/nifi-1.7.0/lib/
RUN mkdir -p /opt/nifi/drivers/
#COPY --chown=nifi:nifi custom_processors/mssql-jdbc-6.2.2.jre8.jar /opt/nifi/drivers/
#COPY --chown=nifi:nifi custom_processors/postgresql-42.2.1.jar  /opt/nifi/drivers/
RUN mkdir -p /opt/nifi/conf
#ARG DOCKER_HOST_IP
#ENV DOCKER_HOST_IP=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | grep -v '172.*.*.*'`
#COPY --chown=nifi:nifi custom_processors/config.properties /opt/nifi/conf/
#COPY --chown=nifi:nifi custom_processors/nifi.properties /opt/nifi/nifi-1.7.0/conf
#COPY --chown=nifi:nifi custom_processors/db.properties /opt/nifi/nifi-1.7.0/conf
#COPY --chown=nifi:nifi custom_processors/flow.xml.gz /opt/nifi/nifi-1.7.0/conf/
#COPY docker-entrypoint.sh /usr/local/bin/
#ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
