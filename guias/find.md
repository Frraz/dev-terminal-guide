# Comando `find` — Buscando Arquivos e Diretórios

O `find` permite localizar arquivos em projetos grandes, remover arquivos temporários ou executar comandos em vários arquivos de uma vez.

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
Lista arquivos alterados nas últimas 24 horas.

### Executar um comando para cada arquivo encontrado

```bash
find . -name "*.log" -exec rm {} \;
```
Remove todos os arquivos `.log`.

### Buscar por diretórios

```bash
find . -type d -name "tests"
```
Encontra todos diretórios chamados `tests`.

---

## Casos de uso em projetos de software

- Limpar arquivos temporários antes do commit.
- Encontrar rapidamente scripts específicos.
- Listar todos os arquivos de configuração:  
  `find . -name "*.config.js"`

---

## Dicas

- Combine com `grep` para buscar arquivos que contenham determinado conteúdo.
- Use com `-not` para excluir diretórios/arquivos indesejados.

---