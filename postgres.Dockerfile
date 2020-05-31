FROM postgres:latest

COPY dump.sql .

COPY dump.sh .

RUN chmod +x dump.sh