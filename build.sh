#!/bin/bash
docker rmi harvarditsecurity/misp
docker build \
    --rm=true --force-rm=true \
    --build-arg MYSQL_MISP_PASSWORD=Einsof1414 \
    --build-arg POSTFIX_RELAY_HOST=localhost \
    --build-arg MISP_FQDN=DALPUBUNTU01 \
    --build-arg MISP_EMAIL=brian.mcdonald@mcdermott.com \
    --build-arg MISP_GPG_PASSWORD=Einsof1414 \
    -t harvarditsecurity/misp container
