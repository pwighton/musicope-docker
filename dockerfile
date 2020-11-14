FROM yobasystems/alpine-nodejs:x86_64

RUN apk update
RUN apk add git bash
RUN git clone https://github.com/oldrich-s/musicope.git /opt/musicope
RUN cd /opt/musicope/ && npm install

# Mount midi files here
VOLUME /opt/musicope/static/songs/

WORKDIR /opt/musicope
CMD npm start
