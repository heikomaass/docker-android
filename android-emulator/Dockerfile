FROM heikomaass/android-sdk

MAINTAINER heikomaass "heiko.maass@namics.com"

RUN echo no | android create avd --force -n test -t android-21 --abi default/x86_64

ENV HOME /root
ADD wait-for-emulator /usr/local/bin/
ADD start-emulator /usr/local/bin/


