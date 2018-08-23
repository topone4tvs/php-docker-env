FROM node:9.2.1-alpine

# Install base packages and set timezone ShangHai
RUN apk update && apk add bash tzdata \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

EXPOSE 9699 9699

CMD ["node"]

CMD ["sh", "-c", "while true;do echo hello docker;sleep 1;done;"]

