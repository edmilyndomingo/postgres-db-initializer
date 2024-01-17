#!/bin/bas

FROM postgres:14

LABEL author="Edmilyn Domingo"
LABEL description="Postgres image to initialize and create database easily"
LABEL version="1.0"

COPY init_user_db.sh /docker-entrypoint-initdb.d/1-init_user_db.sh
COPY init.sql /docker-entrypoint-initdb.d/2-init.sql
