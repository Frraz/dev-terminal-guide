# Comando `ls` — Listando Arquivos e Diretórios

O `ls` é um dos comandos mais utilizados no terminal. Ele serve para listar arquivos e diretórios, sendo essencial para navegar, inspecionar e entender rapidamente a estrutura de projetos de software.

---

## Exemplos práticos

### Listagem simples

```bash
ls
```
Lista os nomes de arquivos e pastas no diretório atual.

### Listagem detalhada

```bash
ls -lh
```
- `-l`: formato longo (mostra permissões, dono, data, tamanho)
- `-h`: tamanhos legíveis (KB, MB)

### Ordenando por data de modificação

```bash
ls -lt
```
Mostra arquivos do mais recente para o mais antigo.

### Listando arquivos ocultos

```bash
ls -la
```
Inclui arquivos ocultos (começam com `.`), úteis para ver arquivos de configuração, como `.gitignore`.

---

## Casos de uso em projetos de software

- Conferir quais arquivos-fonte foram gerados após um build (`ls -lh build/`)
- Verificar permissões de execução de scripts (`ls -l scripts/`)
- Identificar arquivos ocultos de configuração
- Monitorar mudanças em arquivos de log

---

## Dicas

- Combine com `grep` para filtrar por extensão:  
  `ls | grep '\.sh$'`  
  (lista apenas scripts Shell)
- Use com caminhos relativos/absolutos:  
  `ls ~/projetos/meuapp/src/`

---