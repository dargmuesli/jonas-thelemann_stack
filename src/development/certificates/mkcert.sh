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
    `# 1generator` "1generator.app.localhost" \
    `# adminer` "adminer.app.localhost" \
    `# creal` "creal.app.localhost" \
    `# creal/postgraphile` "creal-postgraphile.app.localhost" \
    `# creal/strapi` "creal-strapi.app.localhost" \
    `# hedgedoc` "hedgedoc.app.localhost" \
    `# jonas-thelemann` "app.localhost" "backend.app.localhost" "www.app.localhost" "127.0.0.1" "0.0.0.0" \
    `# minio` "minio.app.localhost" "s3.app.localhost" "creal-audio.s3.app.localhost" \
    `# nextcloud` "nextcloud.app.localhost" \
    `# portainer` "portainer.app.localhost" \
    `# thelounge` "thelounge.app.localhost" \
    `# traefik` "traefik.app.localhost" \
    `# trapparty` "trapparty.app.localhost" \
    `# trapparty/postgraphile` "trapparty-postgraphile.app.localhost"