FROM ubuntu:14.04
RUN echo 'Acquire::http { Proxy "http://192.168.1.100:3142"; };' > /etc/apt/apt.conf.d/proxy
RUN apt-get update
RUN apt-get install -y ruby
RUN gem install --verbose serverspec rake
ADD serverspec /serverspec
ADD fix-it.sh /usr/bin/fix-it.sh
