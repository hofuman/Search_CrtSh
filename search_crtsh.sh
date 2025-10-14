#!/bin/bash

if [ -z "$1" ]; then
  echo "Uso: $0 <dominio>"
  exit 1
fi

DOMAIN=$1
OUTPUT_FILE="${DOMAIN}_subdomains.txt"

echo "Buscando subdomínios para ${DOMAIN}..."

curl -s "https://crt.sh/?q=%.${DOMAIN}&output=json" | \
  jq -r '.[].name_value' | \
  sed 's/\*.//g' | \
  sort -u | \
  tee "${OUTPUT_FILE}"

echo "Resultados salvos em ${OUTPUT_FILE}"
