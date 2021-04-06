# jonas-thelemann_stack


The Docker stack configuration for [jonas-thelemann.de](https://jonas-thelemann.de/).

This project is deployed in accordance to the [DargStack template](https://github.com/dargmuesli/dargstack_template/) to make deployment a breeze. It is closely related to [jonas-thelemann's source code](https://github.com/dargmuesli/jonas-thelemann/).

## Table of Contents


 1. [configs](#configs)
    
 2. [secrets](#secrets)
    
 3. [services](#services)
    
 4. [volumes](#volumes)
    

## configs


 - ### `trapparty-postgraphile_rc`
    
    The TrapParty GraphQL API's configuration file.
    

## secrets


 - ### `creal-strapi_admin-jwt-secret`
    
    The DJ website's CMS administrator JWT secret.
    
 - ### `creal_aws-bucket`
    
    The DJ website's AWS bucket name.
    
 - ### `creal_aws-credentials`
    
    The DJ website's AWS credentials.
    
 - ### `creal_sqitch-target`
    
    The DJ website's Sqitch target.
    
 - ### `hedgedoc_db_url`
    
    The markdown collaboration tool's database url.
    
 - ### `hedgedoc_session-secret`
    
    The markdown collaboration tool's session secret.
    
 - ### `nextcloud_admin-password`
    
    The cloud admin user's password.
    
 - ### `nextcloud_admin-user`
    
    The cloud admin user's name.
    
 - ### `portainer_admin-password`
    
    The container manager's password for the user `admin`.
    
 - ### `postgres-backup_db`
    
    The database backup service's database name.
    
 - ### `postgres_db`
    
    The database's name.
    
 - ### `postgres_password`
    
    The database default user's password.
    
 - ### `postgres_role_creal-postgraphile_password`
    
    The `creal_postgraphile` database role's password.
    
 - ### `postgres_role_trapparty-postgraphile_password`
    
    The `trapparty-postgraphile` database role's password.
    
 - ### `postgres_user`
    
    The database default user's name.
    
 - ### `traefik_cf-dns-api-token` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The DNS provider's DNS API token.
    
 - ### `traefik_cf-zone-api-token` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The DNS provider's zone API token.
    
 - ### `trapparty-postgraphile_connection`
    
    The TrapParty GraphQL API's database URI.
    
 - ### `trapparty-postgraphile_owner-connection`
    
    The TrapParty GraphQL API's database owner URI.
    
 - ### `trapparty_sqitch-target`
    
    The party website's Sqitch target.
    

## services


 - ### `1generator`
    
    You can access this subproject at [1generator.jonas-thelemann.test](https://1generator.jonas-thelemann.test/).
    
 - ### `adminer`
    
    You can access the database's frontend at [adminer.jonas-thelemann.test](https://adminer.jonas-thelemann.test/).
    This information is required for login:
    
    |          |                     |
    | -------- | ------------------- |
    | System   | PostgreSQL          |
    | Server   | postgres            |
    | Username | [postgres_user]     |
    | Password | [postgres_password] |
    | Database | [postgres_db]       |
    
    Values in square brackets are [Docker secrets](https://docs.docker.com/engine/swarm/secrets/).
    
 - ### `creal`
    
    You can access the DJ website at [creal.jonas-thelemann.test](https://creal.jonas-thelemann.test/).
    
 - ### `creal_strapi`
    
    You can access the DJ website's CMS at [strapi.jonas-thelemann.test](https://strapi.jonas-thelemann.test/).
    
 - ### `hedgedoc`
    
    You can access the markdown collaboration tool at [hedgedoc.jonas-thelemann.test](https://hedgedoc.jonas-thelemann.test/).
    
 - ### `jonas-thelemann`
    
    You can access the main project via `jonas-thelemann_nginx`.
    
 - ### `jonas-thelemann_nginx`
    
    You can access the main project at [jonas-thelemann.test](https://jonas-thelemann.test/).
    
 - ### `nextcloud`
    
    You can access nextcloud via `nextcloud_nginx`.
    
 - ### `nextcloud_nginx`
    
    You can access nexcloud's frontend at [nextcloud.jonas-thelemann.test](https://nextcloud.jonas-thelemann.test/).
    
 - ### `portainer`
    
    You can access the container manager's frontend at [portainer.jonas-thelemann.test](https://portainer.jonas-thelemann.test/).
    
 - ### `portainer-agent`
    
    You can access the container manager agent via `portainer`.
    
 - ### `postgres`
    
    You can access the database via `adminer`.
    
 - ### `postgres_backup` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    Backup service for `postgres`.
    
 - ### `randomwinpicker`
    
    You can access the main project via `randomwinpicker_nginx`.
    
 - ### `randomwinpicker_nginx`
    
    You can access the main project at [randomwinpicker.jonas-thelemann.test](https://randomwinpicker.jonas-thelemann.test/).
    
 - ### `thelounge`
    
    You can access the web IRC client's dashboard at [thelounge.jonas-thelemann.test](https://traefik.jonas-thelemann.test/).
    
 - ### `traefik`
    
    You can access the reverse proxy's dashboard at [traefik.jonas-thelemann.test](https://traefik.jonas-thelemann.test/).
    Traefik enables HTTPS for all services and acts as a load-balancer too.
    
 - ### `traefik_certs-dumper` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    See [DargStack template: certificates](https://github.com/dargmuesli/dargstack_template/#certificates).
    
 - ### `trapparty`
    
    You can access TrapParty's website at [trapparty.jonas-thelemann.test](https://trapparty.jonas-thelemann.test/).
    
 - ### `trapparty-postgraphile`
    
    You can access TrapParty's GraphQL API for the PostgreSQL database at [postgraphile.jonas-thelemann.test](https://postgraphile.jonas-thelemann.test/).
    

## volumes


 - ### `acme_data` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The reverse proxy's certificate data.
    
 - ### `creal_strapi_data` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The DJ website's CMS data.
    
 - ### `jonas-thelemann_data` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
    
    The main project's data.
    
 - ### `nextcloud_data`
    
    The cloud's data.
    
 - ### `portainer_data`
    
    The container manager's data.
    
 - ### `postgres_data`
    
    The database's data.
    
 - ### `randomwinpicker_data`
    
    Randomwinpicker's data.
    
 - ### `thelounge_data`
    
    The IRC client's data.
    

