# Docker
> Exemplo de nstalação, configuração e administração de imagens docker para o projeto

## Instalação (Ubuntu)
```bash
# curl -fsSL https://get.docker.com/ | sh
```  

## Instalação docker-compose (Ubuntu)
```bash
# sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```  
Atribuindo permissões:  
```bash
# sudo chmod +x /usr/local/bin/docker-compose
```  
## Alguns comandos  
```bash
$ docker ps
```  
Esse comando lista os containers em execução. Algumas flags úteis inclues:
* -a / all para exibir todos os containers (não apenas aqueles que estão em execução)
* -q / --quiet para mostrar apenas os ids dos containers  

```bash
$ docker pull
```  
```bash
$ docker pull nginx
Using default tag: latest
latest: Pulling from library/nginx
f7e2b70d04ae: Pull complete 
08dd01e3f3ac: Pull complete 
d9ef3a1eb792: Pull complete 
Digest: sha256:98efe605f61725fd817ea69521b0eeb32bef007af0e3d0aeb6258c6e6fe7fc1a
Status: Downloaded newer image for nginx:latest
```  
A maioria das imagens são provenientes do [Docker HUB](https://hub.docker.com/). Lá contém muitas imagens pré-configuradas que você pode baixar e utilizar.  



