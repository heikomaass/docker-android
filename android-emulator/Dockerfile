FROM heikomaass/android-sdk

MAINTAINER heikomaass "heiko.maass@namics.com"

RUN echo no | android create avd --force -n test -t android-21 --abi default/armeabi-v7a 

ENV HOME /root
COPY tools /opt/emulator-tools
ENV PATH ${PATH}:/opt/emulator-tools

VOLUME /workspace
WORKDIR /workspace
