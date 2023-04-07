FROM golang:1.20 as builder

ENV GOOS=linux
ENV GOARCH=amd64

WORKDIR /app
ADD . .

RUN go mod tidy
RUN go build -o bin/goproxy

FROM busybox

WORKDIR /app
COPY --from=builder /app/bin/goproxy /app/goproxy

ENTRYPOINT [ "/app/goproxy"]
