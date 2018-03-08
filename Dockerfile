FROM amazonlinux
MAINTAINER k2works
LABEL version="1.0"

RUN set -xv                                                                                 && \
    yum install groff less vim -y

ENV node_version="6.10.3"
RUN set -xv                                                                                 && \
    curl -s "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"                          && \
    python get-pip.py                                                                       && \
    pip install awscli --ignore-installed six                                               && \
    curl -s -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | sh    && \
    source ~/.nvm/nvm.sh                                                                    && \
    nvm install $node_version                                                               && \
    npm install -g jsonlint                                                                 && \
    npm install -g jq

RUN set -xv                                                                                 && \
    complete -C '/usr/local/bin/aws_completer' aws                                          && \
    echo "complete -C '/usr/local/bin/aws_completer' aws" >> $HOME/.bashrc                  && \
    echo "source ~/.nvm/nvm.sh" >> $HOME/.bashrc
