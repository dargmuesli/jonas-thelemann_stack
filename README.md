# jonas-thelemann Stack

The Docker stack configuration for [my website](https://jonas-thelemann.de/).

This project is deployed in accordance to the [DargStack template](https://github.com/dargmuesli/dargstack_template/) to make deployment a breeze. It is closely related to [my website's source code](https://github.com/dargmuesli/jonas-thelemann/).

## Table of Contents
1. **[Secrets](#secrets)**
1. **[Services](#services)**
1. **[Volumes](#volumes)**

## Secrets
- ### `codimd_db_url`:
  the markdown collaboration tool's database url.

- ### `codimd_session-secret`:
  the markdown collaboration tool's session secret.

- ### `portainer_admin-password`:
  the container manager's password for the user `admin`.

- ### `postgres-backup_db`:
  the database backup service's database name.

- ### `postgres_db`:
  the database's name.

- ### `postgres_password`:
  the database's password.

- ### `postgres_user`:
  the database's default name.

- ### `traefik_cf-dns-api-token`: ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
  the reverse proxy's Cloudflare DNS API token.

- ### `traefik_cf-zone-api-token`: ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
  the reverse proxy's Cloudflare zone API token.

## Services
- ### `1generator` [![Website Uptime Monitoring](https://app.statuscake.com/button/index.php?Track=2f0CqL5WTk&Days=1000&Design=6)](https://www.statuscake.com)

  You can access this subproject at [1generator.jonas-thelemann.test](https://1generator.jonas-thelemann.test/).

- ### `adminer` [![Website Uptime Monitoring](https://app.statuscake.com/button/index.php?Track=tlaGVNKSNr&Days=1000&Design=6)](https://www.statuscake.com)

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

- ### `codimd`

  You can access the markdown collaboration tool at [codimd.jonas-thelemann.test](https://codimd.jonas-thelemann.test/).

- ### `jonas-thelemann` [![Website Uptime Monitoring](https://app.statuscake.com/button/index.php?Track=BkiZnQ1xpj&Days=1000&Design=6)](https://www.statuscake.com)

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

- ### `postgres-backup` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)

  Backup service for `postgres`.

- ### `randomwinpicker` [![Website Uptime Monitoring](https://app.statuscake.com/button/index.php?Track=VRBItScv8j&Days=1000&Design=6)](https://www.statuscake.com)

  You can access the main project via `randomwinpicker_nginx`.

- ### `randomwinpicker_nginx`

  You can access the main project at [randomwinpicker.jonas-thelemann.test](https://randomwinpicker.jonas-thelemann.test/).

- ### `thelounge`

  You can access the web IRC client's dashboard at [thelounge.jonas-thelemann.test](https://traefik.jonas-thelemann.test/).

- ### `traefik` [![Website Uptime Monitoring](https://app.statuscake.com/button/index.php?Track=mbRFzFJJ0l&Days=1000&Design=6)](https://www.statuscake.com)

  You can access the reverse proxy's dashboard at [traefik.jonas-thelemann.test](https://traefik.jonas-thelemann.test/).
  Traefik enables HTTPS for all services and acts as a load-balancer too.

- ### `traefik_certs-dumper` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)

  See [DargStack template: certificates](https://github.com/dargmuesli/dargstack_template/#certificates).

### Additional Services
- #### `status` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square) [![Website Uptime Monitoring](https://app.statuscake.com/button/index.php?Track=9CFPA32m2n&Days=1000&Design=6)](https://www.statuscake.com)

  You can access the status dashboard at [status.jonas-thelemann.de](https://status.jonas-thelemann.de/)

## Volumes

- ### `acme_data` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)
  The certificate's data.

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
