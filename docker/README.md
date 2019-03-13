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
$ docker ps
```  

