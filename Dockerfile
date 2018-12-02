FROM golang

RUN mkdir -p /go/src/github.com/goforbroke1006

ADD . /go/src/github.com/goforbroke1006

RUN go get  -t -v ./...
RUN go get  github.com/canthefason/go-watcher
RUN go install github.com/canthefason/go-watcher/cmd/watcher

ENTRYPOINT  watcher -run github.com/goforbroke1006/teamtrack/cmd  -watch github.com/goforbroke1006/teamtrack
