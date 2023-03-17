FROM golang:latest 

WORKDIR /usr/src/app

RUN go mod init main

COPY main.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

CMD [ "./app" ]

