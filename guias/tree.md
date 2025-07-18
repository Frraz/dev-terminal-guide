# Comando `tree` — Visualizando Estrutura de Diretórios

O `tree` exibe a estrutura do projeto em formato de árvore, facilitando a compreensão da organização do código.

---

## Exemplos práticos

### Visualizar a estrutura principal

```bash
tree -L 2
```
- `-L 2`: mostra até o segundo nível de diretórios.

### Exibir apenas arquivos de um tipo

```bash
tree -P '*.js'
```
Mostra apenas arquivos `.js`.

### Visualizar estrutura ignorando diretórios

```bash
tree -a -I 'node_modules|.git'
```
- `-a`: inclui arquivos ocultos.
- `-I`: ignora diretórios `node_modules` e `.git`.

---

## Casos de uso em projetos de software

- Compartilhar rapidamente a estrutura do projeto em READMEs.
- Entender onde estão scripts, configs, testes, builds.
- Localizar diretórios grandes ou fora do padrão.

---

## Dicas

- Instale via `sudo apt install tree` ou `brew install tree`.
- Combine com redirecionamento para documentar:  
  `tree -L 2 > estrutura.txt`

---