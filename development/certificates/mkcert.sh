#!/bin/sh
THIS=$(dirname $(readlink -f "$0"))
NAME=jonas-thelemann

mkcert \
-cert-file "$THIS/$NAME.crt" \
-ecdsa \
-key-file "$THIS/$NAME.key" \
    $NAME.test \
    "*.$NAME.test" \
    "*.creal.$NAME.test"