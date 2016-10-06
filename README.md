## A docker image for Caddy server configurable via environment variable

### Usage

In docker-compose.yml:

    version: '2'

    services:
      www:
        image: greyarch/caddy
        environment:
          CONFIG: |
            :80 {
                log stdout
                errors stdout
                proxy / backend:80
            }

      backend:
        image: nginx
