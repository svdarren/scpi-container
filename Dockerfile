FROM ubuntu:22.04
RUN apt update \
 && DEBIAN_FRONTEND=noninteractive apt install --yes \
      curl \
      unzip 

#RUN apt install --yes unzip apt-utils
RUN cd ~ \
 && curl -fO https://download.ni.com/support/softlib/MasterRepository/LinuxDrivers2022Q1/NILinux2022Q1DeviceDrivers.zip \
 && unzip ~/NILinux2022Q1DeviceDrivers.zip -d ~/ \
 && DEBIAN_FRONTEND=noninteractive apt install --yes \
      ~/NILinux2022Q1DeviceDrivers/ni-ubuntu2004firstlook-drivers-stream.deb

#RUN apt update \
# && DEBIAN_FRONTEND=noninteractive apt install --yes \
#      ni-visa-server

