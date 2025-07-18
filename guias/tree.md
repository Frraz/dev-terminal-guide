# Comando `tree` — Visualizando Estrutura de Diretórios

O `tree` exibe a estrutura do projeto em formato de árvore, facilitando a compreensão da organização do código, a documentação de projetos e a localização rápida de arquivos ou diretórios.

---

## Índice

- [Exemplos práticos](#exemplos-práticos)
- [Casos de uso em projetos de software](#casos-de-uso-em-projetos-de-software)
- [Sugestões de automação & integração](#sugestões-de-automação--integração)
- [Veja também](#veja-também)
- [Dicas](#dicas)

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
Mostra apenas arquivos `.js` (útil para visualizar scripts JavaScript).

### Visualizar estrutura ignorando diretórios

```bash
tree -a -I 'node_modules|.git'
```
- `-a`: inclui arquivos ocultos.
- `-I`: ignora diretórios `node_modules` e `.git`.

### Exibir tamanho dos arquivos

```bash
tree -sh
```
- `-s`: mostra o tamanho dos arquivos.
- `-h`: formata o tamanho em KB/MB/GB.

---

## Casos de uso em projetos de software

- Compartilhar rapidamente a estrutura do projeto em READMEs ou PRs.
- Entender onde estão scripts, configs, testes, builds e assets.
- Localizar diretórios grandes ou fora do padrão do projeto.
- Visualizar mudanças na estrutura após refatorações ou merges.

---

## Sugestões de automação & integração

- **Documentar a estrutura do projeto automaticamente:**  
  ```bash
  tree -L 2 > estrutura.txt
  ```
  Gera um arquivo de texto com a hierarquia principal do projeto.

- **Verificar se pastas essenciais existem em ambientes automatizados:**  
  ```bash
  tree src/ tests/ config/
  ```

---

## Veja também

- [ls — Listar arquivos com detalhes](ls.md)
- [find — Buscar arquivos específicos em toda a árvore](find.md)
- [grep — Buscar padrões em arquivos do projeto](grep.md)

---

## Dicas

- Instale via `sudo apt install tree` (Linux) ou `brew install tree` (macOS).
- Combine com redirecionamento para documentar:  
  `tree -L 2 > estrutura.txt`
- Use `tree -d` para listar apenas diretórios.
- Consulte `man tree` para opções avançadas de filtragem e exibição.

---

## Dicas Avançadas

- Gere a estrutura da árvore e salve em um arquivo:
  ```bash
  tree -L 3 > estrutura.txt
  ```

- Veja apenas diretórios:
  ```bash
  tree -d
  ```

- Combine com `grep` para encontrar pastas:
  ```bash
  tree | grep config
  ```

- Ignore múltiplos padrões:
  ```bash
  tree -I 'node_modules|.git|dist'
  ```

- Alias para mostrar até o segundo nível apenas com diretórios:
  ```bash
  alias t2='tree -L 2 -d'
  ```