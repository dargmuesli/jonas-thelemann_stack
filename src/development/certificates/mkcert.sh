#!/bin/sh
THIS=$(dirname "$(readlink -f "$0")")

create() {
    NAME="$1"
    shift
    CONTENT=$*

    path="$THIS/$NAME"
    certfile="$path.crt"
    keyfile="$path.key"

    if [ "$CONTENT" != "" ]; then
        # shellcheck disable=SC2086
        mkcert \
            -cert-file "$certfile" \
            -ecdsa \
            -key-file "$keyfile" $CONTENT
    fi

    cat "$(mkcert -CAROOT)/rootCA.pem" >> "$certfile"
}

rm "$THIS"/*.key "$THIS"/*.crt

create "root"
create "traefik" \
    `# 1generator` "1generator.localhost" \
    `# adminer` "adminer.localhost" \
    `# creal` "creal.localhost" \
    `# creal/postgraphile` "creal-postgraphile.localhost" \
    `# creal/strapi` "creal-strapi.localhost" \
    `# hedgedoc` "hedgedoc.localhost" \
    `# jonas-thelemann` "localhost" "www.localhost" "127.0.0.1" "0.0.0.0" \
    `# nextcloud` "nextcloud.localhost" \
    `# portainer` "portainer.localhost" \
    `# thelounge` "thelounge.localhost" \
    `# traefik` "traefik.localhost" \
    `# trapparty` "trapparty.localhost" \
    `# trapparty/postgraphile` "trapparty-postgraphile.localhost"