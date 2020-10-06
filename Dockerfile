FROM 291290/lastversion:v.4

RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/12/main/pg_hba.conf

RUN echo "listen_addresses='*'" >> /etc/postgresql/12/main/postgresql.conf

EXPOSE 5432

RUN mkdir -p /usr/scr/app/
WORKDIR /usr/scr/app/

COPY . /usr/scr/app/

RUN service postgresql restart

RUN ufw allow 5432

USER root

RUN chmod a+x ./scriptdb.py

CMD /etc/init.d/postgresql start ; python3 scriptdb.py

