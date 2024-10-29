#Gradient Network Hook Script

Project address: https://app.gradient.network/

Purchase proxy IP: https://app.proxy-cheap.com

Usage documentation: https://mirror.xyz/0xe8224b3E9C8d35b34D088BB5A216B733a5A6D9EA/jFFUw6Ew3rWThwMxXMoLaa1UMnV8axoQoMVN0EKEthY


> The following part is not necessary to read



Start a proxy separately for testing

sudo APP_USER=example@gmail.com APP_PASS='password' PROXY=socks5://username@password@proxyhost:port node app.js

Start with Docker

Save the proxy address to a proxies.txt file in the format:

> socks5://username:password@proxyhost:port



Then start the container:

docker run -d \
  -e APP_USER=user@mail.com \
  -e APP_PASS=password \
  -v ./proxies.txt:/app/proxies.txt \
  overtrue/gradient-bot

Note: Replace the proxies.txt path with the correct path, or cd to the directory where proxies.txt is located before executing the docker run command.

View execution logs

docker ps

This command will list all containers, find the corresponding container ID (the value in the "CONTAINER ID" column), then execute:

docker exec -it <container_id> pm2 logs

Remove container

docker rm -f <container_id>

