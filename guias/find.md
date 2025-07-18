# Comando `find` — Buscando Arquivos e Diretórios

O `find` é uma ferramenta poderosa para localizar arquivos e diretórios, remover arquivos temporários e executar comandos em diversos arquivos de uma só vez. É fundamental para quem trabalha com projetos grandes, CI/CD ou deseja automatizar tarefas rotineiras.

---

## Índice

- [Exemplos práticos](#exemplos-práticos)
- [Casos de uso em projetos de software](#casos-de-uso-em-projetos-de-software)
- [Sugestões de automação & integração](#sugestões-de-automação--integração)
- [Veja também](#veja-também)
- [Dicas](#dicas)

---

## Exemplos práticos

### Buscar por extensão

```bash
find . -name "*.js"
```
Encontra todos arquivos JavaScript no projeto.

### Buscar arquivos modificados recentemente

```bash
find . -mtime -1
```
Lista arquivos alterados nas últimas 24 horas (ideal para inspecionar mudanças recentes).

### Executar um comando para cada arquivo encontrado

```bash
find . -name "*.log" -exec rm {} \;
```
Remove todos os arquivos `.log` do projeto.

### Buscar por diretórios

```bash
find . -type d -name "tests"
```
Encontra todos diretórios chamados `tests`.

### Buscar arquivos e filtrar conteúdo

```bash
find . -name "*.py" -exec grep "def main" {} +
```
Encontra todos arquivos Python e procura por funções `main` dentro deles.

### Excluir diretórios da busca

```bash
find . -path "./node_modules" -prune -o -name "*.js" -print
```
Procura arquivos `.js` ignorando a pasta `node_modules`.

---

## Casos de uso em projetos de software

- Limpar arquivos temporários antes do commit:  
  `find . -name "*.tmp" -delete`
- Encontrar rapidamente scripts específicos por nome ou tipo.
- Listar todos os arquivos de configuração:  
  `find . -name "*.config.js"`
- Buscar arquivos grandes para análise de espaço:  
  `find . -type f -size +10M`
- Localizar arquivos alterados após um deploy:  
  `find . -type f -newermt "2025-07-15"`

---

## Sugestões de automação & integração

- **Alterar permissões em lote:**
  ```bash
  find scripts/ -name "*.sh" -exec chmod +x {} \;
  ```
  Torna todos os scripts do projeto executáveis.

- **Auditar arquivos potencialmente sensíveis:**
  ```bash
  find . -iname "*.env" -exec ls -lh {} \;
  ```
  Lista todos os `.env` e mostra suas permissões.

- **Buscar e remover arquivos de backup antigos:**
  ```bash
  find . -name "*.bak" -mtime +30 -delete
  ```
  Remove backups com mais de 30 dias.

---

## Veja também

- [grep — Buscar conteúdo dentro dos arquivos](grep.md)
- [chmod — Alterar permissões dos arquivos encontrados](chmod.md)
- [ls — Listar arquivos em diretórios específicos](ls.md)

---

## Dicas

- Combine com `grep` para buscar arquivos que contenham determinado conteúdo, ex:  
  `find . -name "*.js" -exec grep "fetch" {} +`
- Use `-not` ou `-prune` para excluir diretórios/arquivos indesejados.
- Consulte `man find` para explorar mais opções avançadas de busca.
- Sempre teste seus comandos sem `-delete` antes de executar ações destrutivas.

---