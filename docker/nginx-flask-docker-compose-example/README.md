# Exemplo de criação de conteiners Ngnix + Flask
> um pequeno exemplo para cração de dois containers utilizando docker compose

## Arquitetura do projeto

```bash
.
|____api
| |____app.py
| |____requirements.txt
| |____Dockerfile
|____docker-compose.yml
|____README.md
|____conf.d
| |____api.conf
|____nginx
| |____Dockerfile

```  
## Execução

```bash
$ docker-compose build
$ docker-compose up -d
```  
## Teste  

```bash
$ curl http://localhost:8080/
Olá Mundo!
```  
