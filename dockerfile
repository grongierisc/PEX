FROM store/intersystems/irishealth-community:2019.4.0.379.0 as needs-squashing
LABEL maintainer="Guillaume Rongier <guillaume.rongier@intersystems.com>"

ARG IRIS_PASSWORD

RUN echo "${IRIS_PASSWORD}" > /tmp/password.txt && /usr/irissys/dev/Container/changePassword.sh /tmp/password.txt

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y openjdk-8-jre && apt-get clean 

USER irisowner

COPY . /tmp/src

WORKDIR /tmp/src

# Install 
# $ISC_PACKAGE_INSTANCENAME name of the iris instance on docker, default IRIS, valued by InterSystems
# First start the instance quietly in emergency mode with user sys and password sys
RUN iris start $ISC_PACKAGE_INSTANCENAME quietly EmergencyId=sys,sys \
    && sh install.sh $ISC_PACKAGE_INSTANCENAME sys PEX  \
    && /bin/echo -e "sys\nsys\n" | iris stop $ISC_PACKAGE_INSTANCENAME quietly

WORKDIR /home/irisowner/

# housekeeping
USER root
RUN rm -f $ISC_PACKAGE_INSTALLDIR/mgr/messages.log $ISC_PACKAGE_INSTALLDIR/mgr/alerts.log $ISC_PACKAGE_INSTALLDIR/mgr/IRIS.WIJ $ISC_PACKAGE_INSTALLDIR/mgr/journal/* \
    && rm /tmp/password.txt.done && rm -fR /tmp/src

USER irisowner
