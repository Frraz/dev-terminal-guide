#!/bin/bash
# Script: build_projeto.sh
# Executa o build do projeto, detectando Linux/Mac e rodando comandos adequados.
# Uso:
#   ./build_projeto.sh

# Detecta sistema operacional
OS=$(uname)
echo "Sistema detectado: $OS"

if [[ "$OS" == "Darwin" ]]; then
  echo "Executando build para macOS..."
  # Exemplo fictício:
  make build-mac
elif [[ "$OS" == "Linux" ]]; then
  echo "Executando build para Linux..."
  make build-linux
else
  echo "Sistema não suportado."
  exit 1
fi