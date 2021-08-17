FROM fluent/fluentd:v1.12.0-debian-1.0
USER root
RUN ["apt-get", "update", "-y"]
RUN ["apt-get", "install", "inetutils-ping", "-y"]
RUN ["apt-get", "install", "curl", "-y"]
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document", "--version", "5.0.3"]
USER fluent
