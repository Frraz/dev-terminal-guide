# Comando `ls` — Listando Arquivos e Diretórios

O `ls` é um dos comandos mais utilizados no terminal. Ele serve para listar arquivos e diretórios de forma simples ou detalhada, sendo essencial para navegar, inspecionar rapidamente a estrutura de projetos de software, conferir permissões, datas e alterações em arquivos.

---

## Índice

- [Exemplos práticos](#exemplos-práticos)
- [Casos de uso em projetos de software](#casos-de-uso-em-projetos-de-software)
- [Sugestões de automação & integração](#sugestões-de-automação--integração)
- [Veja também](#veja-também)
- [Dicas](#dicas)
- [Dicas Avançadas](#dicas-avançadas)
- [Exemplo Visual](#exemplo-visual)

---

## Exemplos práticos

### Listagem simples

```bash
ls
```
Lista os nomes de arquivos e pastas no diretório atual.

### Listagem detalhada (longa e legível)

```bash
ls -lh
```
- `-l`: formato longo (mostra permissões, dono, data, tamanho)
- `-h`: tamanhos legíveis (KB, MB, GB)

### Ordenando por data de modificação

```bash
ls -lt
```
Mostra arquivos do mais recente para o mais antigo (útil para ver o que mudou após um build ou pull).

### Listando arquivos do mais antigo para o mais recente

```bash
ls -ltr
```
Lista arquivos do mais antigo para o mais recente.

### Listando arquivos ocultos

```bash
ls -la
```
Inclui arquivos ocultos (começam com `.`), úteis para ver arquivos de configuração, como `.env`, `.gitignore`, etc.

### Listar somente diretórios

```bash
ls -l | grep "^d"
```
Filtra para mostrar apenas diretórios (útil para ver a estrutura de módulos/pastas do projeto).

---

## Casos de uso em projetos de software

- Conferir arquivos gerados após um build:  
  `ls -lh build/`
- Verificar permissões de execução de scripts:  
  `ls -l scripts/`
- Identificar arquivos ocultos de configuração:  
  `ls -la`
- Monitorar mudanças em arquivos de log:  
  `ls -lt logs/`
- Listar rapidamente arquivos modificados após um `git pull`:  
  `ls -lt | head`
- Listar scripts Shell em uma pasta:  
  `ls *.sh`

---

## Sugestões de automação & integração

- **Verificar scripts executáveis automaticamente:**
  ```bash
  ls -l scripts/ | grep '^-..x'
  ```
  (Mostra apenas arquivos executáveis em `scripts/`)

- **Listar arquivos modificados nas últimas 24h e salvar em um log:**
  ```bash
  find . -type f -mtime -1 -exec ls -lh {} \; > arquivos_modificados.log
  ```

- **Combinar com `grep` para filtrar arquivos por padrão:**
  ```bash
  ls | grep '\.js$'
  ```
  (Lista apenas arquivos JavaScript)

---

## Veja também

- [grep — Buscar arquivos por padrão](grep.md)
- [find — Buscar arquivos com mais critérios](find.md)
- [tree — Visualizar estrutura de diretórios](tree.md)

---

## Dicas

- Use caminhos relativos/absolutos:  
  `ls ~/projetos/meuapp/src/`
- Combine com wildcards para listar tipos específicos:  
  `ls *.md` (arquivos markdown)
- Use `ls --color=auto` para destacar arquivos por tipo.
- Alias útil:  
  `alias ll='ls -lh'` para facilitar a digitação frequente.
- Consulte `man ls` para ver todas as opções disponíveis.

---

## Dicas Avançadas

- Combine `ls` com pipes para filtrar resultados:
  ```bash
  ls -lh | grep ".sh"
  ```
  Lista apenas arquivos `.sh`, com detalhes.

- Use `ls -lhS` para listar arquivos do maior para o menor.

- Exiba o caminho completo dos arquivos:
  ```bash
  ls -ld $PWD/*
  ```

- Alias útil para listar tudo com detalhes e tamanhos legíveis:
  ```bash
  alias ll='ls -lh'
  alias la='ls -lha'
  ```

- Liste apenas diretórios:
  ```bash
  ls -l | grep "^d"
  ```

- Liste arquivos e ordene por data de acesso:
  ```bash
  ls -ltu
  ```

---

## Exemplo Visual

### Entrada e saída do terminal

```bash
ls -lh
```
```
total 24K
drwxr-xr-x 2 user user 4.0K Jul 18 20:12 scripts
-rw-r--r-- 1 user user 1.2K Jul 18 09:58 README.md
-rw-r--r-- 1 user user 2.1K Jul 18 09:59 main.py
-rw-r--r-- 1 user user 1.0K Jul 18 20:10 comandos_ls.md
```

```bash
ls -la
```
```
drwxr-xr-x 5 user user 4.0K Jul 18 20:12 .
drwxr-xr-x 9 user user 4.0K Jul 18 19:55 ..
-rw-r--r-- 1 user user 1.2K Jul 18 09:58 .gitignore
-rw-r--r-- 1 user user 2.1K Jul 18 09:59 main.py
-rw-r--r-- 1 user user 1.0K Jul 18 20:10 comandos_ls.md
```

```bash
ls -l | grep "^d"
```
```
drwxr-xr-x 2 user user 4096 Jul 18 20:12 scripts
```

### Gif ou imagem ilustrativa

![Exemplo visual do uso do ls para listar arquivos e pastas](../assets/ls-exemplo.gif)

---