# Guia de Comandos de Terminal

Bem-vindo! Este guia apresenta os comandos de terminal mais usados no desenvolvimento de software, trazendo aplicações práticas, dicas, integrações e links para aprofundar em cada comando. Serve tanto para iniciantes quanto para desenvolvedores experientes.

---

## Índice de Comandos

- [ls — Listando arquivos e diretórios](ls.md): inspeção rápida do conteúdo e permissões.
- [tree — Estrutura de diretórios](tree.md): visualize a organização de pastas e arquivos.
- [find — Buscando arquivos](find.md): localize arquivos e limpe temporários.
- [grep — Buscando texto](grep.md): encontre padrões, funções e TODOs no código.
- [chmod — Permissões de arquivos](chmod.md): ajuste de permissões para scripts e arquivos sensíveis.
- [curl — Baixando arquivos e APIs](curl.md): automação de downloads e testes de endpoints.
- [Sumário detalhado dos comandos](SUMMARY.md)

---

## 1. `ls` — Listando arquivos e diretórios

Visualize rapidamente o conteúdo do projeto, identifique permissões, arquivos modificados e classifique por data ou tamanho.

### Exemplos práticos

```bash
ls -lh
```
- Lista arquivos/diretórios com detalhes e tamanhos legíveis.

```bash
ls -l src/
```
- Detalha arquivos em `src/`, útil para conferir presença de arquivos-fonte.

```bash
ls -ltr
```
- Lista do mais antigo ao mais recente — ótimo após builds ou pulls.

**Veja também:** [tree](tree.md), [find](find.md), [grep](grep.md)

**Mais sobre:** [ls (guia completo)](ls.md)

---

## 2. `tree` — Estrutura de diretórios

Visualize a estrutura do projeto em árvore. Ideal para entender a organização de códigos, configs e módulos rapidamente.

### Exemplos práticos

```bash
tree -L 2
```
- Mostra até o segundo nível de pastas.

```bash
tree src/
```
- Exibe apenas a estrutura do código-fonte.

> **Dica:** Instale com `sudo apt install tree` (Linux) ou `brew install tree` (macOS).

**Veja também:** [ls](ls.md), [find](find.md)

**Mais sobre:** [tree (guia completo)](tree.md)

---

## 3. `find` — Buscando arquivos

Encontre arquivos rapidamente, limpe logs, scripts temporários ou localize configs em grandes projetos.

### Exemplos práticos

```bash
find . -name "*.py"
```
- Busca todos arquivos Python.

```bash
find . -type f -name "*.log" -delete
```
- Remove todos os logs antes de um commit.

```bash
find . -mtime -1
```
- Encontra arquivos modificados nas últimas 24h.

**Veja também:** [grep](grep.md), [ls](ls.md), [chmod](chmod.md)

**Mais sobre:** [find (guia completo)](find.md)

---

## 4. `grep` — Buscando texto

Busque funções, variáveis, TODOs, configs e qualquer padrão textual nos seus arquivos e códigos.

### Exemplos práticos

```bash
grep -rnw . -e "minhaFuncao"
```
- Procura pela função "minhaFuncao" e mostra o número da linha.

```bash
grep -r "TODO" .
```
- Encontra todos os "TODO" do projeto.

```bash
grep -r "DATABASE_URL" config/
```
- Busca por variáveis de ambiente/config em arquivos de configuração.

**Veja também:** [find](find.md), [ls](ls.md)

**Mais sobre:** [grep (guia completo)](grep.md)

---

## 5. `chmod` — Permissões de arquivos

Controle as permissões dos arquivos, garanta scripts executáveis e proteja arquivos sensíveis.

### Exemplos práticos

```bash
chmod +x scripts/deploy.sh
```
- Torna o script executável.

```bash
chmod 600 .env
```
- Permite leitura/escrita do `.env` só pelo dono.

**Veja também:** [ls](ls.md), [find](find.md)

**Mais sobre:** [chmod (guia completo)](chmod.md)

---

## 6. `curl` — Baixando arquivos e APIs

Automatize o download de arquivos, teste endpoints REST e consuma APIs direto do terminal.

### Exemplos práticos

```bash
curl -O https://raw.githubusercontent.com/usuario/repositorio/main/scripts/install.sh
```
- Baixa um script de instalação do GitHub.

```bash
curl -X POST -H "Content-Type: application/json" \
  -d '{"login":"user","senha":"123"}' \
  http://localhost:5000/api/login
```
- Testa um endpoint de login em API local.

```bash
curl https://api.github.com/repos/usuario/repositorio/issues
```
- Consulta issues de um repositório pelo GitHub API.

**Veja também:** [grep](grep.md), [ls](ls.md)

**Mais sobre:** [curl (guia completo)](curl.md)

---

---

## Dicas Gerais

- Combine comandos com `|` (pipe) para criar fluxos poderosos, ex: `ls -lh | grep ".sh"`
- Use `man comando` para acessar o manual detalhado de cada comando.
- Scripts de automação podem combinar esses comandos para tarefas de build, deploy, backup, limpeza, etc.
- Consulte os guias específicos para exemplos de automação, integração com scripts e combinações avançadas de comandos.

---

[Voltar ao README](../README.md)