# docker-ruby-hello-world
super simple ruby docker hello world

- `docker build -t ruby-sample`
- `ID=$(docker run -p 8080:8080 -d ruby-sample)`
- `open "http://$(docker-machine ip):8080"`
- `docker logs $ID`
- `docker stop $ID`
- `docker rm $ID`