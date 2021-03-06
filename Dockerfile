FROM codenvy/ubuntu_jdk8

ENV ARDUINO_IDE_VERSION 1.6.7

RUN wget -q -O- https://downloads.arduino.cc/arduino-{ARDUINO_IDE_VERSION}-linux64.tar.xz | tar xJ -C /opt
RUN ln -s /opt/arduino-${ARDUINO_IDE_VERSION}/arduino /usr/local/bin/
RUN ln -s /opt/arduino-${ARDUINO_IDE_VERSION}/arduino-builder /usr/local/bin/

END ARDUINO_BUILDER_HOME=/opt/arduino-${ARDUINO_IDE_VERSION}
