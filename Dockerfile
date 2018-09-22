FROM alpine
RUN apk update && apk --no-cache upgrade && apk add --no-cache --virtual git openssh-client build-deps gcc python3-dev musl-dev py3-cffi openssl-dev make && pip3 install -U pip && pip3 install ansible && apk del build-deps gcc python3-dev musl-dev openssl-dev make && rm -rf /var/cache/apk/
