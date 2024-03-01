FROM docker.io/surrealdb/surrealdb:latest

ENV SURREAL_CAPS_ALLOW_ALL="true" \
    SURREAL_AUTH="true" \
    SURREAL_USER="admin" \
    SURREAL_PASS="admin" \
    SURREAL_PATH="file:///var/surreal/data"

WORKDIR ${SURREAL_PATH}

# RUN apk add curl; curl -sSf https://install.surrealdb.com | sh

EXPOSE 8000

ENTRYPOINT [ "/surreal" ]

CMD [ "start" ]
