FROM registry.cn-hangzhou.aliyuncs.com/acs-sample/alpine

RUN apk update \
  && apk add git \
    zsh \
    curl \
    zip \

# install vim
RUN apk add --no-cache
    musl-dev \
    ncurses-dev \
    perl-dev

#RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

RUN mkdir /usr/go && \
    cd /usr/go/ && \
    curl -o 'go1.10.linux-amd64.tar.gz' 'https://dl.google.com/go/go1.10.linux-amd64.tar.gz' && \
    tar -xzf go1.10.linux-amd64.tar.gz

#RUN resize -s 80 160

EXPOSE 7511 7511

RUN zsh

CMD ["sh", "-c", "while true;do echo hello docker;sleep 1;done;"]
