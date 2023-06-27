FROM golang:1.20.5-alpine3.18

WORKDIR /app

COPY ./bin/app-amd64 .

CMD ["./app-amd64"]