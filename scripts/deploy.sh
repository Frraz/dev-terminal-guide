#!/bin/bash
# Script: deploy.sh
# Exemplo de deploy (ajuste para o seu projeto).
# Uso:
#   ./deploy.sh

BRANCH=${1:-main}

echo "Realizando deploy da branch: $BRANCH"

git pull origin $BRANCH

# Exemplo: build e restart de serviço
./build_projeto.sh
systemctl restart meu-servico

echo "Deploy concluído!"