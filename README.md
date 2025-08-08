# jonas-thelemann_stack


The Docker stack configuration for [jonas-thelemann.de](https://jonas-thelemann.de/).

This project is deployed in accordance to the [DargStack template](https://github.com/dargstack/dargstack_template/) to make deployment a breeze. It is closely related to [jonas-thelemann's source code](https://github.com/dargmuesli/jonas-thelemann/).

## Table of Contents


 1. [secrets](#secrets)
    
 2. [services](#services)
    
 3. [volumes](#volumes)
    

## secrets


 - ### `creal_aws-credentials`
    
    The DJ website's AWS credentials.
    
 - ### `creal_postgraphile_connection`
    
    The cReal GraphQL API's database URI.
    
 - ### `creal_postgraphile_owner-connection`
    
    The cReal GraphQL API's database owner URI.
    
 - ### `creal_s3_access-key-id`
    
    The DJ website's AWS access key id.
    
 - ### `creal_s3_secret-access-key`
    
    The DJ website's AWS access key.
    
 - ### `creal_sqitch-target`
    
    The DJ website's Sqitch target.
    
 - ### `creal_strapi_admin-jwt-secret`
    
    The DJ website's CMS administrator JWT secret.
    
 - ### `creal_strapi_api-token-salt`
    
    The DJ website's CMS administrator admin token salt.
    
 - ### `creal_strapi_app-keys`
    
    The DJ website's CMS session secrets.
    
 - ### `creal_strapi_jwt-secret`
    
    The DJ website's CMS JWT secret.
    
 - ### `creal_strapi_transfer-token-salt`
    
    The DJ website's CMS transfer token salt.
    
 - ### `hedgedoc_db_url`
    
    The markdown collaboration tool's database url.
    
 - ### `hedgedoc_session-secret`
    
    The markdown collaboration tool's session secret.
    
 - ### `jobber_aliases`
    
    The job scheduler's SMTP client mail alias.
    
 - ### `jobber_aws-bucket`
    
    The job scheduler's AWS bucket name.
    
 - ### `jobber_aws-configuration`
    
    The job scheduler's AWS configuration.
    
 - ### `jobber_aws-credentials`
    
    The job scheduler's AWS credentials.
    
 - ### `jobber_msmtprc`
    
    The job scheduler's SMTP client configuration.
    
 - ### `jonas-thelemann_nodemailer-transporter`
    
    The email service's SMTP configuration.
    
 - ### `jonas-thelemann_turnstile-key`
    
    The captcha provider's application key.
    
 - ### `nextcloud_admin-password`
    
    The cloud admin user's password.
    
 - ### `nextcloud_admin-user`
    
    The cloud admin user's name.
    
 - ### `portainer_admin-password`
    
    The container manager's password for the user `admin`.
    
 - ### `postgres-backup_db` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The database backup service's database name.
    
 - ### `postgres_password`
    
    The database default user's password.
    
 - ### `postgres_role_creal_postgraphile_password`
    
    The `creal_postgraphile` database role's password.
    
 - ### `postgres_role_trapparty_postgraphile_password`
    
    The `trapparty_postgraphile` database role's password.
    
 - ### `postgres_user`
    
    The database default user's name.
    
 - ### `traefik_cf-dns-api-token` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The DNS provider's DNS API token.
    
 - ### `traefik_cf-zone-api-token` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The DNS provider's zone API token.
    
 - ### `trapparty_postgraphile_connection`
    
    The TrapParty GraphQL API's database URI.
    
 - ### `trapparty_postgraphile_owner-connection`
    
    The TrapParty GraphQL API's database owner URI.
    
 - ### `trapparty_sqitch-target`
    
    The party website's Sqitch target.
    

## services


 - ### `1generator`
    
    You can access this subproject at [1generator.localhost](https://1generator.localhost/).
    
 - ### `adminer`
    
    You can access the database's frontend at [adminer.localhost](https://adminer.localhost/).
    This information is required for login:
    
    |          |                     |
    | -------- | ------------------- |
    | System   | PostgreSQL          |
    | Server   | postgres            |
    | Username | [postgres_user]     |
    | Password | [postgres_password] |
    | Database |                     |
    
    Values in square brackets are [Docker secrets](https://docs.docker.com/engine/swarm/secrets/).
    
 - ### `creal`
    
    You can access the DJ website at [creal.localhost](https://creal.localhost/).
    
 - ### `creal_postgraphile`
    
    You can access cReal's GraphQL API for the PostgreSQL database at [creal_postgraphile.localhost](https://creal_postgraphile.localhost/).
    
 - ### `creal_strapi`
    
    You can access the DJ website's CMS at [creal_strapi.localhost](https://creal_strapi.localhost/).
    
 - ### `hedgedoc`
    
    You can access the markdown collaboration tool at [hedgedoc.localhost](https://hedgedoc.localhost/).
    
 - ### `jobber`
    
    You cannot access the jobber via a web interface.
    
 - ### `jonas-thelemann`
    
    You can access the main project at [localhost](https://localhost/).
    
 - ### `minio` ![development](https://img.shields.io/badge/-development-informational.svg?style=flat-square)
    
    You can access the s3 console at [minio.localhost](https://minio.localhost/).
    You can access the s3 api service at [s3.localhost](https://s3.localhost/) if you want to access via cli from outside the stack.
    
 - ### `nextcloud`
    
    You can access nextcloud via `nextcloud_nginx`.
    
 - ### `nextcloud_cron`
    
    You can access nextcloud via `nextcloud_nginx`.
    
 - ### `nextcloud_nginx`
    
    You can access nexcloud's frontend at [nextcloud.localhost](https://nextcloud.localhost/).
    
 - ### `portainer`
    
    You can access the container manager's frontend at [portainer.localhost](https://portainer.localhost/).
    
 - ### `portainer-agent`
    
    You can access the container manager agent via `portainer`.
    
 - ### `postgres`
    
    You can access the database via `adminer`.
    
 - ### `postgres_backup` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    Backup service for `postgres`.
    
 - ### `redis`
    
    You cannot access the key-value store via a web interface.
    
 - ### `thelounge`
    
    You can access the web IRC client's dashboard at [thelounge.localhost](https://traefik.localhost/).
    
 - ### `traefik`
    
    You can access the reverse proxy's dashboard at [traefik.localhost](https://traefik.localhost/).
    Traefik enables HTTPS for all services and acts as a load-balancer too.
    
 - ### `traefik_certs-dumper` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    You cannot access the reverse proxy's certificate helper directly.
    
 - ### `trapparty`
    
    You can access TrapParty's website at [trapparty.localhost](https://trapparty.localhost/).
    
 - ### `trapparty_postgraphile`
    
    You can access TrapParty's GraphQL API for the PostgreSQL database at [postgraphile.localhost](https://postgraphile.localhost/).
    

## volumes


 - ### `acme_data` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The reverse proxy's certificate data.
    
 - ### `creal_strapi_data` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The DJ website's CMS data.
    
 - ### `minio_data`
    
    The s3 server's data.
    
 - ### `nextcloud_data`
    
    The cloud's data.
    
 - ### `portainer_data`
    
    The container manager's data.
    
 - ### `postgres_data`
    
    The database's data.
    
 - ### `redis_data`
    
    The key-value store's data.
    
 - ### `thelounge_data`
    
    The IRC client's data.
    

