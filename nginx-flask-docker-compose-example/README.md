# Exemplo de criação de conteiners Ngnix + Flask
> um pequene exemplo para cração de dois containers utilizando docker compose

## Arquitetura do projeto

```bash
.
|____docker-compose.yml
|____web
| |____app.py
| |____requirements.txt
| |____Dockerfile
|____README.md
|____conf.d
| |____webapp.conf
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
