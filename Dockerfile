FROM eclipse-temurin:11-alpine

RUN apk add --no-cache \
  bash \
  curl \
  graphviz \
  ttf-dejavu \
  font-noto-cjk \
  font-noto-cjk-extra

COPY bin/ /usr/local/bin/
RUN ls -la /usr/local/bin

ENV PLANTUML_JAR="/jars/plantuml.jar"

ENV PLANTUML_JAR_URL="https://sourceforge.net/projects/plantuml/files/plantuml.jar/download"
ENV PLANTUML_JLATEXMATH_URL="http://beta.plantuml.net/plantuml-jlatexmath.zip"

WORKDIR /data
ENTRYPOINT ["/usr/local/bin/entrypoint"]
CMD ["plantuml"]
