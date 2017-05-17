FROM python:2.7
RUN apt-get update && apt-get install -y zip
RUN mkdir /pack
ADD pack.sh /pack.sh
WORKDIR /pack
VOLUME [/pack]
CMD /bin/sh /pack.sh
