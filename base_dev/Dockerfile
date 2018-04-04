FROM registry.cn-hangzhou.aliyuncs.com/acs-sample/alpine

RUN apk update \
  && apk add git \
    zsh \
    curl \
    zip \
    make 

# install vim
RUN apk add --no-cache
    musl-dev \
    ncurses-dev \
    perl-dev

RUN cd /tmp && \
    git clone https://github.com/vim/vim.git && \
    cd vim && \
    make && make install
RUN ln -s /usr/local/vim/bin/vim /usr/bin/

# oh-my-zsh
#RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#RUN zsh

# window resize
#RUN resize -s 80 160


CMD ["sh", "-c", "while true;do echo hello docker;sleep 1;done;"]
