# Comando `curl` — Baixando Arquivos e Testando APIs

O `curl` é usado para baixar arquivos, consumir APIs e testar endpoints HTTP/HTTPS diretamente pelo terminal.

---

## Exemplos práticos

### Baixar arquivo de dependência

```bash
curl -O https://exemplo.com/arquivo.zip
```
Baixa o arquivo para o diretório atual.

### Testar endpoint de API (GET)

```bash
curl https://api.github.com/repos/usuario/repositorio/issues
```
Consulta issues de um repositório público no GitHub.

### Enviar requisição POST com JSON

```bash
curl -X POST -H "Content-Type: application/json" \
  -d '{"login":"user","senha":"123"}' \
  http://localhost:3000/api/login
```
Testa um endpoint de login na API local.

### Baixar arquivo autenticado

```bash
curl -u usuario:senha -O https://example.com/arquivo.txt
```
Usa autenticação básica para baixar arquivos protegidos.

---

## Casos de uso em projetos de software

- Baixar scripts, binários ou assets de repositórios.
- Automatizar testes de API.
- Validar respostas de endpoints em integrações.

---

## Dicas

- Combine com `jq` para formatar respostas JSON:  
  `curl ... | jq '.'`
- Use em scripts de CI/CD para baixar dependências ou enviar notificações.

---