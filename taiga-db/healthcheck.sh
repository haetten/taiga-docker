#!/bin/bash
set -e

# Variáveis (pegam do container)
HOST="127.0.0.1"
PORT="5432"
USER="${POSTGRES_USER}"

# Testa se Postgres responde
#pg_isready -h "$HOST" -p "$PORT" -U "$USER" || exit 1

echo "User: " $USER
# Tenta uma query simples para garantir que autenticação funciona
# psql -h "$HOST" -p "$PORT" -U "$USER" -d "${POSTGRES_DB}" -c "SELECT 1;" >/dev/null 2>&1 || exit 1
psql -h "localhost" -p "5432" -U "taiga" -d "taiga" -c "SELECT 1;"

exit 0


