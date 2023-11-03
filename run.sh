```
docker run -d --name ator-relay \
  -p 127.0.0.1:9050:9050 \
  -p 9001:9001 \
  -p 9030:9030 \
  -p 127.0.0.1:9051:9051 \
  -v /docker/images/ator-relay/conf/torrc:/etc/tor/torrc:ro \
  -v /etc/localtime:/etc/localtime \
  -v /docker/data/ator-relay:/var/lib/tor \
  --restart unless-stopped \
  ator/tor
```
