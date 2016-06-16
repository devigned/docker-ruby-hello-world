# docker-ruby-hello-world
super simple ruby docker hello world

- `export PORT=8080`
- `docker build -t ruby-sample .`
- `ID=$(docker run -e "PORT=$PORT" -p $PORT:$PORT -d ruby-sample)`
- `open "http://$(docker-machine ip):$PORT"`
- `docker logs $ID`
- `docker stop $ID`
- `docker rm $ID`