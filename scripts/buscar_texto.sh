#!/bin/bash
# Script: buscar_texto.sh
# Busca por um ou mais termos em arquivos do projeto, de modo recursivo.
# Uso:
#   ./buscar_texto.sh termo1 termo2 ...
# Exemplo:
#   ./buscar_texto.sh TODO FIXME

if [ $# -eq 0 ]; then
  echo "Uso: $0 termo1 [termo2 ...]"
  exit 1
fi

# Percorre todos os termos passados como argumento
for termo in "$@"; do
  echo "Buscando por: $termo"
  # grep: -r (recursivo), -n (linha), --color (destaca)
  grep -rn --color=auto "$termo" .
done