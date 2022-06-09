FROM ghcr.io/deck-app/go:v1.18
LABEL maintainer Naba Das <hello@get-deck.com>
RUN mkdir -p /app
COPY main.go /app/main.go
RUN apk add bash
ENV GOPATH /go
WORKDIR $GOPATH
ARG USER_ID
ARG GROUP_ID
RUN apk --no-cache add shadow
RUN addgroup -g ${GROUP_ID} deck
RUN adduser -u ${USER_ID} -G deck -h /home/deck -D deck
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
USER deck
ENTRYPOINT [ "/docker-entrypoint.sh" ]