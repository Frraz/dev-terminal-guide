# Comando `curl` — Baixando Arquivos e Testando APIs

O `curl` é uma ferramenta poderosa para baixar arquivos, consumir e testar APIs HTTP/HTTPS, automatizar integrações e interagir com serviços web diretamente pelo terminal. Essencial para desenvolvedores que precisam baixar dependências, validar endpoints ou conectar sistemas.

---

## Índice

- [Exemplos práticos](#exemplos-práticos)
- [Casos de uso em projetos de software](#casos-de-uso-em-projetos-de-software)
- [Sugestões de automação & integração](#sugestões-de-automação--integração)
- [Veja também](#veja-também)
- [Dicas](#dicas)
- [Dicas Avançadas](#dicas-avançadas)
- [Exemplo Visual](#exemplo-visual)

---

## Exemplos práticos

### Baixar arquivo de dependência

```bash
curl -O https://exemplo.com/arquivo.zip
```
Baixa o arquivo para o diretório atual, mantendo o nome de origem.

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
Testa um endpoint de login em uma API local.

### Baixar arquivo autenticado

```bash
curl -u usuario:senha -O https://example.com/arquivo.txt
```
Usa autenticação básica para baixar arquivos protegidos por login.

### Salvar resposta de API em arquivo

```bash
curl https://api.github.com/repos/usuario/repositorio/issues -o issues.json
```
Salva a resposta JSON em um arquivo local.

### Adicionar cabeçalhos personalizados

```bash
curl -H "Authorization: Bearer $TOKEN" https://api.meuservico.com/v1/users
```
Útil para APIs que requerem autenticação via token.

---

## Casos de uso em projetos de software

- Baixar scripts, binários, releases ou assets de repositórios para automação de builds e deploys.
- Automatizar testes de API (GET, POST, PUT, DELETE) em pipelines de integração contínua.
- Validar respostas de endpoints REST, checando status HTTP ou conteúdo retornado.
- Simular chamadas de serviços externos em ambientes de desenvolvimento.
- Coletar dados ou logs expostos por endpoints HTTP internos.

---

## Sugestões de automação & integração

- **Testar endpoints automaticamente em scripts de CI/CD:**
  ```bash
  curl -sf https://meusistema.com/health || echo "Serviço fora do ar!"
  ```

- **Baixar e instalar dependências em um setup de ambiente:**
  ```bash
  curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  ```

- **Enviar notificações para webhooks após build/deploy:**
  ```bash
  curl -X POST -H "Content-Type: application/json" \
    -d '{"status":"success"}' \
    https://hooks.slack.com/services/...
  ```

- **Combinando com `jq` para processar JSON:**
  ```bash
  curl -s https://api.github.com/repos/usuario/repositorio/issues | jq '.[] | .title'
  ```

---

## Veja também

- [grep — Buscar padrões em respostas](grep.md)
- [find — Automatizar downloads em lote](find.md)
- [ls — Listar arquivos baixados](ls.md)

---

## Dicas

- Use `-s` para suprimir barrinha de progresso e tornar a saída mais limpa.
- Combine com `jq` para formatar e filtrar respostas JSON:  
  `curl ... | jq '.'`
- Use `-I` para buscar apenas os headers HTTP da resposta.
- Em scripts de automação, sempre cheque o código de status:  
  `curl -f ...` (erro se HTTP >= 400)
- Consulte `man curl` para opções avançadas e suporte a outros protocolos.

---

## Dicas Avançadas

- Veja apenas os headers de uma resposta:
  ```bash
  curl -I https://exemplo.com
  ```

- Siga redirecionamentos automaticamente:
  ```bash
  curl -L https://encurtador.com/xyz
  ```

- Combine com `jq` para formatar JSON:
  ```bash
  curl -s https://api.github.com/repos/usuario/repositorio | jq '.name, .stargazers_count'
  ```

- Salve cookies de sessão:
  ```bash
  curl -c cookies.txt https://site.com/login
  ```

- Alias para testar se uma URL está ativa:
  ```bash
  alias checar_url='curl -Is'
  ```

---

## Exemplo Visual

### Entrada e saída do terminal

```bash
curl -I https://exemplo.com
```
```
HTTP/2 200
date: Fri, 18 Jul 2025 20:12:00 GMT
content-type: text/html; charset=UTF-8
content-length: 1270
server: nginx/1.18.0 (Ubuntu)
...
```

```bash
curl -O https://exemplo.com/arquivo.zip
ls -lh arquivo.zip
```
```
-rw-r--r-- 1 user user 1.3M Jul 18 20:15 arquivo.zip
```

### Gif ou imagem ilustrativa

![Exemplo visual do uso do curl para baixar arquivos e consultar headers](../assets/curl-exemplo.gif)

---