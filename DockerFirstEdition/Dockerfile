FROM ubuntu:16.04

RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8

RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list


RUN apt-get update && apt-get install -y python python3-pip && pip3 install psycopg2-binary
RUN apt-get install -y postgresql postgresql-common postgresql-client postgresql-contrib

USER postgres

RUN    /etc/init.d/postgresql start &&\
    psql --command "ALTER USER postgres WITH PASSWORD '123';" &&\
    createdb -O postgres db

EXPOSE 5432

WORKDIR /home/

COPY . /home/


USER root

RUN chmod a+x ./scriptdb.py

CMD /etc/init.d/postgresql start ; python3 scriptdb.py
