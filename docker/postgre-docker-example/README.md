# Exemplo de criação de conteiner docker + postgres
> um pequeno exemplo para criação de container utilizando docker compose

## Arquitetura do projeto

```bash
|____data
| |____postgres
|____docker-compose.yml
|____README.md
|____sql_scripts
| |____reg_motorista.csv
| |____reg_taxi.csv
| |____reg_permissao.csv
| |____reg_taxi_copy.sql
| |____reg_motorista_copy.sql
| |____reg_permissao_copy.sql
| |____table.sql

```  
## Docker-compose
```bash
version: "3"
services:
  tecweb:
    image: postgres:latest
    container_name: "postgres"
    environment:
      - POSTGRES_DB=tecweb
      - POSTGRES_USER=tecweb
      - TZ=GMT
    volumes:
      - "./data/postgres:/var/lib/postgresql/data"
    ports:
      - 5432:5432
```


## Execução

```bash
$ docker-compose up tecweb
```  
## Execução dos scripts sql  

```bash
$ sudo cp sql_scripts/*.sql data/postgres/
$ sudo cp sql_scripts/*.csv data/postgres/
$ docker-compose exec tecweb psql -U tecweb -d tecweb -1 -f /var/lib/postgresql/data/table.sql
$ docker-compose exec tecweb psql -U tecweb -d tecweb -1 -f /var/lib/postgresql/data/reg_motorista_copy.sql
$ docker-compose exec tecweb psql -U tecweb -d tecweb -1 -f /var/lib/postgresql/data/reg_taxi_copy.sql
```  

