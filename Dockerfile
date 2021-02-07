FROM grafana/promtail

EXPOSE 9080
ENV HOST_NAME="localhost"
COPY config.yml /etc/promtail/
CMD ["-config.file=/etc/promtail/config.yml", "-config.expand-env"]