FROM golang:tip-alpine3.21

WORKDIR /build

COPY . . 
RUN go mod download 
RUN go build -o main ./

CMD ["./main"]