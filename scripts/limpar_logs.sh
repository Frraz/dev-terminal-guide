#!/bin/bash
# Script: limpar_logs.sh
# Remove arquivos .log modificados há mais de 7 dias.
# Uso:
#   ./limpar_logs.sh [dias]
# Exemplo:
#   ./limpar_logs.sh 3  # limpa logs com mais de 3 dias

DIAS=${1:-7} # Padrão: 7 dias

echo "Removendo arquivos .log modificados há mais de $DIAS dias..."
find . -type f -name "*.log" -mtime +$DIAS -exec rm -v {} \;