FROM visono/debian
#FROM dokken/debian-10
MAINTAINER Vadim Spirichev <z1326593@rambler.ru>
#
RUN \
    apt-get -yqq update;\
    apt-get -yqq install apt-utils;\
    apt-get -yqq install net-tools;\
    apt-get -yqq install joe;\
    apt-get -yqq install openssh-server;\
    apt-get -yqq install sudo;\
    apt-get -yqq install links2;\
    apt-get -yqq install netcat;
    


#
#


ADD slogan.sh /usr/local/bin
#ADD stest.sh /usr/local/bin
#ADD word1.txt /opt
#ADD word2.txt /opt

#USER root
#RUN sed -i 's/http:\/\/pypi/https:\/\/pypi/g' /usr/local/Plone/buildout-cache/eggs/zc.buildout-2.4.3-py2.7.egg/zc/buildout/easy_install.py
#USER plone


ENTRYPOINT slogan.sh $nicname

#ENTRYPOINT /etc/init.d/plone start && /bin/bash
#ENTRYPOINT /opt/plone/zeocluster/bin/plonectl start && /bin/bash
#ENTRYPOINT sudo -u plone_daemon /usr/local/Plone/zeocluster/bin/plonectl start && /bin/bash
#ENTRYPOINT sudo -u plone_daemon /usr/local/Plone/zeocluster/bin/plonectl start
