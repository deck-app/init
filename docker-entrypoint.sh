#!/bin/sh
set +x
mkdir -p /go/myapp
cd /go/myapp
go mod init myapp
go get github.com/kataras/iris/v12@master
cp -a /app/main.go /go/myapp/main.go 2> /dev/null
chown -R {USER_ID}:{GROUP_ID} /go
go run main.go
