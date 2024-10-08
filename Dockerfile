
FROM golang:1.22-alpine as app
WORKDIR /app
COPY go.mod ./
RUN go mod download

COPY . .

RUN go build -o main .

CMD ["./main"]