FROM ubuntu:14.04.1

# Inspired from https://registry.hub.docker.com/u/ksoichiro/android/
MAINTAINER heiko.maass@namics.com

RUN apt-get update -qq
RUN dpkg --add-architecture i386
RUN apt-get install -y --no-install-recommends openjdk-7-jdk 
RUN apt-get install -y --no-install-recommends curl

RUN cd /opt && curl -O http://dl.google.com/android/android-sdk_r24.2-linux.tgz
RUN cd /opt && tar xzf android-sdk_r24.2-linux.tgz 
RUN cd /opt && rm -f android-sdk_r24.2-linux.tgz 

ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

RUN echo y | android update sdk --filter platform-tools,build-tools-22.0.1,android-22,sys-img-armeabi-v7a-android-22,sys-img-x86_64-android-22,extra-android-support --no-ui --force

RUN apt-get clean


