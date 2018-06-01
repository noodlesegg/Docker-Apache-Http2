# Docker Apache HTTP/2

## https://github.com/noodlesegg/Docker-Apache-Http2

#### Build docker image

```bash
 docker build . -t apache_http2
```

#### Create docker container from apache_http2 docker image

```bash
 docker run -d --name http2 -v \
 Docker-Apache-Http2/www:/var/www/html -v \
 Docker-Apache-Http2/config:/etc/apache2/sites-enabled -v \
 Docker-Apache-Http2/cert:/etc/ssl/certs -p 80:80 -p 443:443 apache_http2
```

#### Or prefer docker compose

```
version: '1'
services:
  apache:
    build: .
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - Docker-Apache-Http2/www:/var/www/html
      - Docker-Apache-Http2/config:/etc/apache2/sites-enabled
      - Docker-Apache-Http2/cert:/etc/ssl/certs
    restart: always
```

#### SSL certificates for localhost or local development

[refer to this link](https://letsencrypt.org/docs/certificates-for-localhost/)