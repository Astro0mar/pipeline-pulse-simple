FROM golang:1.25-alpine AS builder

WORKDIR /app

COPY go.mod ./
COPY . .

RUN go build -o pipeline-pulse .

FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/pipeline-pulse .
COPY templates ./templates
COPY static ./static

EXPOSE 8080

CMD ["./pipeline-pulse"]