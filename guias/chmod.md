# Comando `chmod` — Alterando Permissões de Arquivos

O `chmod` ajusta permissões, sendo essencial para garantir que scripts e arquivos sensíveis estejam seguros e executáveis quando necessário no desenvolvimento de software.

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

### Tornar um script executável

```bash
chmod +x scripts/deploy.sh
```
Permite a execução de um script de deploy.

### Restringir acesso a um arquivo sensível

```bash
chmod 600 .env
```
Permite leitura e escrita apenas pelo dono do arquivo.

### Permissões em modo octal

```bash
chmod 755 script.sh
```
- `7`: dono pode ler, escrever e executar
- `5`: grupo e outros podem ler e executar

### Remover permissão de escrita de todos

```bash
chmod a-w README.md
```
Evita alterações acidentais no arquivo para todos os usuários.

---

## Casos de uso em projetos de software

- Garantir que scripts de build/teste possam ser executados:  
  `chmod +x scripts/test.sh`
- Proteger arquivos de configuração e segredos:  
  `chmod 600 .env`
- Padronizar permissões em repositórios compartilhados, evitando problemas de execução em diferentes ambientes.
- Impedir edição acidental de arquivos importantes do projeto.

---

## Sugestões de automação & integração

- **Automatizar permissões ao clonar um projeto:**  
  Inclua em um script de setup:
  ```bash
  chmod +x scripts/*.sh
  chmod 600 .env
  ```
- **Verificar permissões de arquivos sensíveis em pipelines de CI/CD:**  
  ```bash
  ls -l .env
  ```
  (Certifique-se de que `.env` não está exposto)

- **Reverter permissões de edição para arquivos de documentação após atualização automática:**  
  ```bash
  chmod a-w docs/*.md
  ```

---

## Veja também

- [ls — Conferindo permissões de arquivos](ls.md)
- [find — Alterando permissões em lote](find.md)
- [grep — Procurando arquivos sensíveis por extensão](grep.md)

---

## Dicas

- Use `ls -l` para conferir permissões antes e depois de alterações.
- Sempre restrinja arquivos `.env` e de credenciais a apenas o usuário proprietário.
- Permissões incorretas podem comprometer a segurança do seu projeto.
- Consulte `man chmod` para mais opções e detalhes sobre modos simbólicos e octais.

---

## Dicas Avançadas

- Remova permissão de execução de todos os scripts de uma pasta:
  ```bash
  chmod -x scripts/*.sh
  ```

- Aplique permissões recursivamente:
  ```bash
  chmod -R 700 pasta_secreta/
  ```

- Veja permissões numericamente:
  ```bash
  stat -c "%a %n" *
  ```

- Alias para tornar todos scripts Shell executáveis:
  ```bash
  alias xall='chmod +x *.sh'
  ```

- Combine com `find` para alterar permissões em lote:
  ```bash
  find . -name "*.sh" -exec chmod +x {} \;
  ```

---

## Exemplo Visual

### Entrada e saída do terminal

```bash
ls -l main.sh
```
```
-rw-r--r-- 1 user user 212 Jul 18 09:59 main.sh
```

```bash
chmod +x main.sh
ls -l main.sh
```
```
-rwxr-xr-x 1 user user 212 Jul 18 09:59 main.sh
```

### Gif ou imagem ilustrativa

![Comparação visual: permissões antes e depois do chmod](../assets/chmod-diff.png)

---
