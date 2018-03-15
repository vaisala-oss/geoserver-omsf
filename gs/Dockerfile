FROM kartoza/geoserver:2.12.1

COPY geoserver-2.12.1-app-schema-plugin.zip /usr/local/tomcat/webapps/geoserver/WEB-INF/lib
RUN cd /usr/local/tomcat/webapps/geoserver/WEB-INF/lib && unzip -o geoserver-2.12.1-app-schema-plugin.zip commons-digester-1.7.jar gt-app-schema-18.1.jar gt-app-schema-resolver-18.1.jar gt-complex-18.1.jar

RUN mkdir -p /init-data
COPY omsf /init-data/omsf
COPY *.xml /init-data/
COPY init-data.sh /

CMD ["/init-data.sh"]