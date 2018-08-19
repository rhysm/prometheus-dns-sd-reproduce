FROM quay.io/coreos/etcd:latest

RUN apk update && apk add bash

ADD add.sh /add.sh

RUN chmod +x /add.sh

CMD exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"