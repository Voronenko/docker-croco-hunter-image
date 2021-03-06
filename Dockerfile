FROM golang:1.8-alpine3.6


ARG VCS_REF
ARG BUILD_DATE

# Metadata
LABEL org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/voronenko/docker-croco-hunter-image" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"

COPY . /go/src/github.com/voronenko/docker-croco-hunter-image
COPY static/ static/

ENV GIT_SHA $VCS_REF
ENV GOPATH /go
RUN cd $GOPATH/src/github.com/voronenko/docker-croco-hunter-image && go install -v .

CMD ["docker-croco-hunter-image"]

EXPOSE 7777
