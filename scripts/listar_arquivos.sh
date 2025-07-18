#!/bin/bash
# Lista todos os arquivos do diretório atual ordenados por tamanho, do maior para o menor.

echo "Listando arquivos do diretório atual por tamanho:"
ls -lhS

# Explicação:
# - ls: lista arquivos e diretórios
# - -l: formato longo (detalhado)
# - -h: tamanhos humanos (KB, MB, GB)
# - -S: ordena por tamanho (decrescente)