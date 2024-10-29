@echo off
docker run -d ^
    --name GradientBot-proxy ^
    -e APP_USER=mailcuaban@gmail.com ^
    -e APP_PASS=passcuaban ^
     -v D:/gradient-bot/proxies.txt:/app/proxies.txt ^
    overtrue/gradient-bot
pause