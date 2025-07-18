# Guia de Comandos de Terminal

Aqui estão alguns comandos essenciais para o dia a dia de desenvolvimento, com explicações e exemplos.

---

## Listar arquivos e diretórios

```bash
ls -lh
```
- **Descrição:** Lista arquivos e diretórios no formato longo e com tamanhos legíveis.
- **Exemplo de uso:**
  ```
  $ ls -lh
  drwxr-xr-x 2 user user 4,0K jul 17 09:21 scripts
  -rw-r--r-- 1 user user 1,2K jul 17 09:21 README.md
  ```

---

## Exibir estrutura de diretórios

```bash
tree -L 2
```
- **Descrição:** Mostra a árvore de diretórios até o nível 2.
- **Dica:** Instale usando `sudo apt install tree` (Linux) ou `brew install tree` (Mac).

---

## Buscar arquivos por nome

```bash
find . -name "*.md"
```
- **Descrição:** Procura por arquivos com extensão `.md` no diretório atual e subdiretórios.
- **Exemplo:** Encontrar todos arquivos Markdown no projeto.

---

## Buscar texto dentro de arquivos

```bash
grep -rnw . -e "palavra"
```
- **Descrição:** Busca recursiva por "palavra" em todos os arquivos, mostrando o número da linha.
- **Exemplo:** Localizar rapidamente onde um termo aparece no código.

---

## Alterar permissões de arquivos

```bash
chmod +x script.sh
```
- **Descrição:** Torna o arquivo `script.sh` executável.
- **Dica:** Usado para permitir execução de scripts `.sh`.

---

## Baixar arquivos da internet

```bash
curl -O https://exemplo.com/arquivo.txt
```
- **Descrição:** Baixa o arquivo do endereço informado para o diretório atual.

---

## Dicas e boas práticas

- Use `history | grep comando` para encontrar comandos usados anteriormente.
- Combine comandos com pipes (`|`) para criar fluxos de trabalho eficientes.
- Crie aliases para comandos frequentes no `.bashrc` ou `.zshrc`.
- Explore o autocompletar do shell usando a tecla TAB.
- Leia manuais com `man comando` (exemplo: `man grep`).

---