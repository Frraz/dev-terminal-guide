# Guia de Comandos de Terminal

Este guia apresenta comandos essenciais do terminal, com foco em aplicações práticas para desenvolvimento e manutenção de software.

---

## 1. ls

O comando `ls` lista arquivos e diretórios. É fundamental para inspecionar rapidamente a estrutura de projetos, verificar o que mudou após um build, ou entender permissões de arquivos.

### Exemplos práticos:

```bash
ls -lh
```
Lista arquivos e diretórios com detalhes (permissão, tamanho legível, datas).

```bash
ls -l src/
```
Mostra detalhes dos arquivos do diretório `src`, útil para checar se arquivos-fonte estão presentes.

```bash
ls -ltr
```
Lista arquivos do mais antigo para o mais recente — ótimo para ver arquivos recém-modificados (ex: após um build ou rodar testes).

---

## 2. tree

O comando `tree` exibe a estrutura de diretórios em formato de árvore — excelente para visualizar rapidamente a organização de um projeto.

### Exemplos práticos:

```bash
tree -L 2
```
Mostra a estrutura do projeto até o segundo nível de pastas, facilitando a localização de módulos, pacotes ou arquivos de configuração.

> **Dica:** Instale com `sudo apt install tree` (Linux) ou `brew install tree` (macOS).

```bash
tree src/
```
Visualiza rapidamente a estrutura do código-fonte.

---

## 3. find

`find` é ótimo para localizar arquivos em projetos grandes, encontrar logs, scripts ou arquivos de configuração.

### Exemplos práticos:

```bash
find . -name "*.py"
```
Busca todos os arquivos Python no projeto.

```bash
find . -type f -name "*.log" -delete
```
Remove todos os arquivos de log — útil para limpeza antes de um commit.

```bash
find . -mtime -1
```
Encontra arquivos modificados nas últimas 24 horas (ideal para saber o que mudou recentemente).

---

## 4. grep

`grep` permite buscar texto dentro de arquivos — perfeito para localizar funções, variáveis, ou entender onde determinado termo é usado no código.

### Exemplos práticos:

```bash
grep -rnw . -e "minhaFuncao"
```
Busca recursivamente por "minhaFuncao" e mostra o número da linha.

```bash
grep -r "TODO" .
```
Encontra todos os comentários "TODO" no projeto — excelente para revisões.

```bash
grep -r "DATABASE_URL" config/
```
Verifica onde variáveis de ambiente/configuração são usadas.

---

## 5. chmod

`chmod` altera permissões de arquivos. Usado para tornar scripts executáveis ou proteger arquivos sensíveis.

### Exemplos práticos:

```bash
chmod +x scripts/deploy.sh
```
Torna o script de deploy executável.

```bash
chmod 600 .env
```
Protege o arquivo de variáveis de ambiente, permitindo leitura/escrita só pelo dono.

---

## 6. curl

`curl` é utilizado para baixar arquivos, testar APIs ou consumir endpoints — tudo pelo terminal.

### Exemplos práticos:

```bash
curl -O https://raw.githubusercontent.com/usuario/repositorio/main/scripts/install.sh
```
Baixa um script de instalação diretamente do GitHub.

```bash
curl -X POST -H "Content-Type: application/json" \
  -d '{"login":"user","senha":"123"}' \
  http://localhost:5000/api/login
```
Testa um endpoint da API local, simulando um login — útil para testes rápidos.

```bash
curl https://api.github.com/repos/usuario/repositorio/issues
```
Consulta as issues de um repositório GitHub via API.

---

## Dicas Gerais

- Combine comandos com `|` (pipe) para criar fluxos poderosos, ex: `ls -lh | grep ".sh"`
- Use `man comando` para acessar o manual detalhado de cada comando.
- Scripts de automação podem combinar esses comandos para tarefas de build, deploy, backup, limpeza, etc.

---