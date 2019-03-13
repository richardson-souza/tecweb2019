# Exemplo de criação de conteiner docker + postgres
> um pequeno exemplo para criação de container utilizando docker compose

## Arquitetura do projeto

```bash
.
|____data
| |____postgres
|____docker-compose.yml
|____README.md
|____sql_scripts
| |____reg_motorista_mot_telefone.sql
| |____reg_motorista_mot_cep.sql
| |____reg_taxi_taxi_chassi.sql
| |____reg_taxi_taxi_placa.sql
| |____reg_motorista_mot_renach.sql
| |____reg_taxi_taxi_modelo.sql
| |____reg_taxi_taxi_status.sql
| |____reg_permissao_perm_motorista_tipo.sql
| |____reg_permissao_perm_data_fim.sql
| |____reg_motorista_mot_rg.sql
| |____reg_permissao_perm_status.sql
| |____reg_taxi_taxi_marca.sql
| |____reg_motorista_mot_rua.sql
| |____reg_permissao_perm_data_inicio.sql
| |____reg_motorista_mot_nome.sql
| |____reg_motorista_mot_status.sql
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
docker-compose exec tecweb psql -U tecweb -d tecweb -1 -f /var/lib/postgresql/data/table.sql
```  

