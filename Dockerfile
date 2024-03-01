FROM surrealdb/surrealdb:latest

ENV SURREAL_USER \
    SURREAL_PASS \
    SURREAL_DB_FILE="/surreal/data"

WORKDIR /surreal

CMD surreal start -A --auth -u ${SURREAL_USER} -p ${SURREAL_PASS} file://${SURREAL_DB_FILE}