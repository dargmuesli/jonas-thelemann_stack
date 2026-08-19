# jonas-thelemann

The Docker stack configuration for [jonas-thelemann.de](https://jonas-thelemann.de/). See [jonas-thelemann](https://github.com/dargmuesli/jonas-thelemann).

## Profiles

Profiles group services so you can deploy subsets on demand. Activate with `dargstack deploy --profiles <name>`.

### backup

Services: jobber, minio, postgres, postgres-backup, traefik, traefik-certs-dumper

### creal

Services: creal, creal-postgraphile, creal-strapi, postgres, traefik, traefik-certs-dumper

### default

Services: adminer, jonas-thelemann, postgres, traefik, traefik-certs-dumper

### nextcloud

Services: nextcloud, nextcloud-cron, nextcloud-nginx, postgres, redis, traefik, traefik-certs-dumper

### portainer

Services: portainer, portainer-agent, traefik, traefik-certs-dumper

### trapparty

Services: postgres, traefik, traefik-certs-dumper, trapparty, trapparty-postgraphile

## Services

Each service corresponds to a compose.yaml file. Descriptions are extracted from YAML comments in the source. Services marked *(production only)* exist only in the production overlay.

### 1generator

You can access this subproject at [1generator.localhost](https://1generator.localhost/).

### adminer

You can access the database's frontend at [adminer.localhost](https://adminer.localhost/).
This information is required for login:

|          |                     |
| -------- | ------------------- |
| System   | PostgreSQL          |
| Server   | postgres            |
| Username | [postgres-user]     |
| Password | [postgres-password] |
| Database |                     |

Values in square brackets are [Docker secrets](https://docs.docker.com/engine/swarm/secrets/).

### creal

You can access the DJ website at [creal.localhost](https://creal.localhost/).

### creal-postgraphile

You can access cReal's GraphQL API for the PostgreSQL database at [creal-postgraphile.localhost](https://creal-postgraphile.localhost/).

### creal-strapi

You can access the DJ website's CMS at [creal-strapi.localhost](https://creal-strapi.localhost/).

### geoip

You cannot access the ip geolocator via a web interface.

### hedgedoc

You can access the markdown collaboration tool at [hedgedoc.localhost](https://hedgedoc.localhost/).

### jobber

You cannot access the jobber via a web interface.

### jonas-thelemann

You can access the main project at [localhost](https://localhost/).

### minio

You can access the s3 console at [minio.localhost](https://minio.localhost/).
You can access the s3 api service at [s3.localhost](https://s3.localhost/) if you want to access via cli from outside the stack.

### nextcloud

You can access nextcloud via `nextcloud-nginx`.

### nextcloud-cron

You can access nextcloud via `nextcloud-nginx`.

### nextcloud-nginx

You can access nextcloud's frontend at [nextcloud.localhost](https://nextcloud.localhost/).

### portainer

You can access the container manager's frontend at [portainer.localhost](https://portainer.localhost/).

### portainer-agent

You can access the container manager agent via `portainer`.

### postgres

You can access the database via `adminer`.

### postgres-backup *(production only)*

Backup service for `postgres`.

### redis

You cannot access the key-value store via a web interface.

### thelounge

You can access the web IRC client's dashboard at [thelounge.localhost](https://thelounge.localhost/).

### traefik

You can access the reverse proxy's dashboard at [traefik.localhost](https://traefik.localhost/).
Traefik enables HTTPS for all services and acts as a load-balancer too.

### traefik-certs-dumper *(production only)*

You cannot access the reverse proxy's certificate helper directly.

### trapparty

You can access TrapParty's website at [trapparty.localhost](https://trapparty.localhost/).

### trapparty-postgraphile

You can access TrapParty's GraphQL API for the PostgreSQL database at [postgraphile.localhost](https://postgraphile.localhost/).

