#!/bin/bash
# Uso: ./buscar_texto.sh "termo"
# Busca recursivamente um termo em todos os arquivos do diretório atual e destaca o resultado.

if [ -z "$1" ]; then
  echo "Uso: $0 \"termo\""
  exit 1
fi

echo "Buscando por \"$1\" em todos os arquivos..."
grep -rin --color=auto "$1" .

# Explicação:
# - grep: comando de busca de texto
# - -r: busca recursiva
# - -i: ignora maiúsculas/minúsculas
# - -n: mostra o número da linha
# - --color=auto: destaca o termo encontrado
# - "$1": termo buscado (primeiro argumento passado ao script)
# - .: busca no diretório atual