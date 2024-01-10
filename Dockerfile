FROM vault:1.4.0

WORKDIR /app

EXPOSE 8200

RUN setcap 'cap_ipc_lock=+ep' $(readlink -f $(which vault))

# CMD ["vault", "server", "-dev", "-dev-root-token-id=${VAULT_DEV_ROOT_TOKEN_ID}"]
