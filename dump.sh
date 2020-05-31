#!/bin/bash

set -x

psql -h localhost -U postgres cadastro -c 'GRANT ALL PRIVILEGES ON DATABASE cadastro TO postgres;'
psql -h localhost -U postgres cadastro < dump.sql;


