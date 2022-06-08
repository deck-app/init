FROM ghcr.io/deck-app/go:v1.18
LABEL maintainer Naba Das <hello@get-deck.com>
RUN mkdir -p /app
COPY main.go /app/main.go
ENV GOPATH /go
WORKDIR $GOPATH
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]