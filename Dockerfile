FROM alpine as builder

RUN apk add -U curl && \
    curl -Lq -o threema-web.tgz "https://github.com/threema-ch/threema-web/releases/download/v2.1.2/threema-web-2.1.2-gh.tar.gz"

FROM nginx:mainline-alpine

 LABEL  maintainer="MoriTanosuke" \
        org.label-schema.name="Threema Web" \
        org.label-schema.description="Simple Dockerfile to run Threema Web" \
        org.label-schema.url="https://github.com/MoriTanosuke/docker-threema" \
        org.label-schema.vcs-url="https://github.com/MoriTanosuke/docker-threema" \
        org.label-schema.schema-version="1.0"

COPY --from=builder /threema-web.tgz .
RUN tar xzf threema-web.tgz && rm threema-web.tgz && \
    rm -rf /usr/share/nginx/html && \
    mv threema-web-2.1.2-gh /usr/share/nginx/html
