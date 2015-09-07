FROM heikomaass/android-sdk

MAINTAINER heikomaass "heiko.maass@namics.com"

RUN echo no | android create avd --force -n test -t android-22 --abi default/armeabi-v7a 

ENV HOME /root
COPY tools /opt/emulator-tools
ENV PATH ${PATH}:/opt/emulator-tools

# Create dummy project so that gradle cache will be created
# RUN mkdir -p /opt/tmp && android create project -g -v 1.2.+ -a MainActivity -k de.heikomaass -t android-22 -p /opt/tmp
# RUN cd /opt/tmp && ./gradlew tasks
# RUN rm -rf /opt/tmp

VOLUME /root/.m2
VOLUME /workspace
WORKDIR /workspace

