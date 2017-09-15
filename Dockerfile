FROM biola/cas:latest

COPY cas.properties /etc/cas/config/cas.properties

USER cas
EXPOSE 8443
CMD ["java", "-jar", "/app/cas.war", "-Xmx2048m"]
