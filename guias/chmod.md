# Comando `chmod` — Alterando Permissões de Arquivos

O `chmod` ajusta permissões, sendo essencial para garantir que scripts e arquivos sensíveis estejam seguros e executáveis quando necessário.

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

---

## Casos de uso em projetos de software

- Garantir que scripts de build/teste possam ser executados.
- Proteger arquivos de configuração e segredos.
- Padronizar permissões em repositórios compartilhados.

---

## Dicas

- Use `ls -l` para conferir permissões.
- Sempre restrinja arquivos `.env` e de credenciais.
- Cuidado: permissões erradas podem expor dados sensíveis!

---