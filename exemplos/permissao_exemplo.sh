#!/bin/bash
# Exemplo de alteração de permissões de arquivo

echo "Criando arquivo teste.txt"
touch teste.txt

echo "Permissão antes:"
ls -l teste.txt

echo "Alterando permissão para executável..."
chmod +x teste.txt

echo "Permissão depois:"
ls -l teste.txt

# Explicação linha a linha:
# 1. touch teste.txt         # Cria um arquivo vazio
# 2. ls -l teste.txt         # Mostra permissões antes
# 3. chmod +x teste.txt      # Adiciona permissão de execução
# 4. ls -l teste.txt         # Mostra permissões depois