#!/bin/bash
# Script: rodar_testes.sh
# Executa testes automatizados do projeto.
# Uso:
#   ./rodar_testes.sh

echo "Rodando testes unitários..."
if [ -f package.json ]; then
  npm test
elif [ -f pytest.ini ] || [ -d tests ]; then
  pytest
else
  echo "Não foi possível detectar o framework de testes."
fi