FROM registry.cn-hangzhou.aliyuncs.com/acs-sample/alpine

RUN apk update \
  && apk add git \
    zsh \
    curl \
    zip \
    vim \
    openjdk8

RUN ln -s /usr/lib/jvm/java-1.8-openjdk/bin/javac /usr/bin/javac

RUN mkdir /usr/java
RUN cd /usr/java/ && \
    curl -o 'tomcat.9.0.6.tar.gz' 'https://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-9/v9.0.6/bin/apache-tomcat-9.0.6.tar.gz' && \
    tar -xzf tomcat.9.0.6.tar.gz

ENV TOMCAT_HOME /usr/java/apache-tomcat-9.0.6
ENV PATH ${PATH}:${TOMCAT_HOME}/bin

RUN cd /usr/java/ && \
    curl -o 'apache-maven-3.5.3-bin.tar.gz' 'http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.tar.gz' && \
    tar -xzf apache-maven-3.5.3-bin.tar.gz

ENV APACHE_MARVEN_HOME /usr/java/apache-maven-3.5.3 
ENV PATH ${PATH}:${APACHE_MARVEN_HOME}/bin

RUN resize -s 80 160

RUN sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

EXPOSE 9511 9511

RUN zsh

ENTRYPOINT ["/usr/java/apache-tomcat-9.0.6/bin/catalina.sh", "run"]
# CMD ["sh", "-c", "while true;do echo hello docker;sleep 1;done;"]
