FROM alpine:latest

RUN mkdir -p /opt/hugo/bin

RUN apk --update --no-cache add curl \
  && cd /opt/hugo/bin \
  && curl -fL https://github.com/spf13/hugo/releases/download/v0.16/hugo_0.16_linux-64bit.tgz | tar xvfz - \
  && rm -f *.tgz && apk del curl


ENTRYPOINT ["/opt/hugo/bin/hugo"]
CMD ["--help"]
