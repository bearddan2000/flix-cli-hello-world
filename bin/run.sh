#! /bin/sh

FILE=hello &&  mkdir $FILE && \
    cd $FILE && \
    java -jar /opt/flix/flix.jar init 1>&2 && \
    cp ../$FILE.flix src/Main.flix && \
    java -jar /opt/flix/flix.jar build 1>&2 && \
    java -jar /opt/flix/flix.jar build-jar 1>&2 && \
    java -jar artifact/$FILE.jar