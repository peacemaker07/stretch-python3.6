FROM raspbian/stretch:latest

RUN apt-get -y update \
  && apt-get -y upgrade \
  && apt-get -y install python3-dev python3-pip python3-smbus build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev \
  && wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz \
  && tar -xzvf ./Python-3.6.8.tgz \
  && cd Python-3.6.8 \
  && ./configure \
  && sudo make \
  && sudo make altinstall \
  && ln -s /usr/local/bin/python3.6 /usr/local/bin/python3 \
