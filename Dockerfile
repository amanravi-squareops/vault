FROM vault:1.4.0

WORKDIR /app

ENV VAULT_DEV_ROOT_TOKEN_ID=${VAULT_DEV_ROOT_TOKEN_ID}

EXPOSE 8200

RUN setcap 'cap_ipc_lock=+ep' $(readlink -f $(which vault))
