# Comando `grep` — Buscando Texto em Arquivos

O `grep` é fundamental para localizar rapidamente funções, variáveis, anotações, padrões ou qualquer trecho de texto em arquivos de código e configuração. É indispensável para revisões, debugging e automação de tarefas.

---

## Índice

- [Exemplos práticos](#exemplos-práticos)
- [Casos de uso em projetos de software](#casos-de-uso-em-projetos-de-software)
- [Sugestões de automação & integração](#sugestões-de-automação--integração)
- [Veja também](#veja-também)
- [Dicas](#dicas)

---

## Exemplos práticos

### Buscar termo em todos os arquivos

```bash
grep -rnw . -e "minhaFuncao"
```
- `-r`: recursivo
- `-n`: mostra o número da linha
- `-w`: busca palavra exata

### Buscar TODOs no código

```bash
grep -r "TODO" .
```
Localiza pontos de melhoria ou tarefas pendentes.

### Buscar uso de variável em arquivos específicos

```bash
grep -rn "DATABASE_URL" config/
```
Procura por variáveis de ambiente em arquivos de configuração.

### Buscar palavra ignorando maiúsculas/minúsculas

```bash
grep -ri "token" .
```
Busca todas as ocorrências de "token" (Token, TOKEN, etc).

### Buscar padrão regex

```bash
grep -rE "set[A-Z][a-zA-Z]+"
```
Encontra funções que seguem o padrão `setNomeDaFuncao`.

---

## Casos de uso em projetos de software

- Revisar rapidamente pontos críticos (ex: `FIXME`, `HACK`).
- Encontrar referências a endpoints, funções, variáveis, configs ou palavras-chave.
- Auditar presença de palavras sensíveis como `password`, `secret`, `token`.
- Identificar onde hooks, middlewares ou handlers estão definidos e usados.

---

## Sugestões de automação & integração

- **Buscar por funções não utilizadas:**  
  Combine com `find` para buscar por funções específicas em arquivos `.js`:
  ```bash
  find . -name "*.js" -exec grep "minhaFuncao" {} +
  ```
- **Auditar código em pipelines de CI/CD:**  
  Busque por palavras proibidas antes do deploy:
  ```bash
  grep -r --color=auto "console.log" src/
  ```
- **Gerar relatórios de pontos críticos:**  
  ```bash
  grep -r "TODO\|FIXME" . > relatorio_tarefas.txt
  ```

---

## Veja também

- [find — Buscar arquivos por nome ou tipo](find.md)
- [ls — Listar arquivos em diretórios específicos](ls.md)
- [chmod — Ajustar permissões dos arquivos encontrados](chmod.md)

---

## Dicas

- Use `--color=auto` para destacar resultados no terminal.
- Redirecione a saída para arquivos para relatórios rápidos.
- Consulte `man grep` para explorar buscas avançadas com regex, inversão (-v), contagem (-c) e muito mais.
- Combine com pipes (`|`) para refinar buscas em fluxos de comandos.

---

## Dicas Avançadas

- Ignore maiúsculas/minúsculas ao buscar:
  ```bash
  grep -i "token" arquivo.txt
  ```

- Veja apenas o nome dos arquivos que contêm o termo:
  ```bash
  grep -rl "TODO" .
  ```

- Mostre linhas ao redor do resultado (contexto):
  ```bash
  grep -C 3 "erro" logs/app.log
  ```

- Use múltiplos padrões (regex):
  ```bash
  grep -E "TODO|FIXME" *.js
  ```

- Alias para busca recursiva por TODOs:
  ```bash
  alias gtodo='grep -r --color=auto "TODO" .'
  ```