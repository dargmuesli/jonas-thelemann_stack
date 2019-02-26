<!-- TODO: uptime for individual services -->
[![Website Uptime Monitoring](https://app.statuscake.com/button/index.php?Track=BkiZnQ1xpj&Days=1000&Design=2)](https://www.statuscake.com)

# jonas-thelemann Stack

The Docker stack configuration for [my website](https://jonas-thelemann.de/).

This project is deployed in accordance to the [DargStack template](https://github.com/Dargmuesli/dargstack-template/) to make deployment a breeze. It is closely related to [my website's source code](https://github.com/dargmuesli/jonas-thelemann/).

## Table of Contents
1. **[Services](#services)**
1. **[Secrets](#secrets)**
1. **[Volumes](#volumes)**

<a name="services"></a>

## Services

- #### `1generator`

  You can access this subproject at [1generator.jonas-thelemann.test](https://1generator.jonas-thelemann.test/).

- #### `adminer`

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

- #### `certdumper` ![production](https://img.shields.io/badge/-production-informational.svg?style=flat-square)

  See [DargStack template: certificates](https://github.com/Dargmuesli/dargstack-template/#certificates).

- #### `jonas-thelemann`

  You can access the main project at [jonas-thelemann.test](https://jonas-thelemann.test/).

- #### `postgres`

  You can access the database via `adminer`.

- #### `randomwinpicker`

  You can access this subproject at [randomwinpicker.jonas-thelemann.test](https://randomwinpicker.jonas-thelemann.test/).

- #### `traefik`

  You can access the reverse proxy's dashboard at [traefik.jonas-thelemann.test](https://traefik.jonas-thelemann.test/).
  Traefik enables HTTPS for all services and acts as a load-balancer too.

<a name="secrets"></a>

## Secrets

- `postgres_db`:
  The database's name.

- `postgres_password`:
  The database's password.

- `postgres_user`:
  The database's default name.

<a name="volumes"></a>

## Volumes

- `postgres-data`:
  The database's data.
