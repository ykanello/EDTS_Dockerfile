###############################################################################################
# Dockerfile to build EDTS - A suite of routing, fuel and distance tools for Elite: Dangerous #
# courtesy of Andy Martin https://bitbucket.org/Esvandiary/edts                               #
# Based on Alpine linux and should work in ARM/X86/AMD64                                      #
###############################################################################################

FROM alpine:latest
MAINTAINER ykanello@ykanello.info

RUN apk update && apk upgrade
RUN apk --no-cache --upgrade add python2 git
RUN git clone https://bitbucket.org/Esvandiary/edts.git
WORKDIR edts/
RUN python update.py
