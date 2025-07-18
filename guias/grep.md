# Comando `grep` — Buscando Texto em Arquivos

O `grep` é fundamental para localizar rapidamente funções, variáveis, anotações e padrões no código.

---

## Exemplos práticos

### Buscar termo em todos os arquivos

```bash
grep -rnw . -e "minhaFuncao"
```
- `-r`: recursivo
- `-n`: mostra linha
- `-w`: palavra exata

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

---

## Casos de uso em projetos de software

- Revisar rapidamente pontos críticos (ex: `FIXME`, `HACK`).
- Encontrar referências a endpoints, funções ou configurações.
- Auditar presença de palavras sensíveis (ex: `password`, `secret`).

---

## Dicas

- Combine com `find` para buscar em tipos de arquivos específicos:  
  `find . -name "*.js" -exec grep "fetch" {} +`
- Use `--color=auto` para destacar resultados.

---