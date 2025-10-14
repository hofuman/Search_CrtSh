# Search CrtSh

Um script shell simples e eficiente para descobrir subdomínios de um determinado domínio usando os logs de transparência de certificados do `crt.sh`.

---

## 🚀 Descrição

Este script consulta o serviço `crt.sh` para encontrar todos os subdomínios registrados para um domínio especificado. Em seguida, processa os resultados para fornecer uma lista limpa, ordenada e única de subdomínios, que é salva em um arquivo `.txt`.

Ideal para reconhecimento em testes autorizados e pesquisas de segurança.

---

## ✨ Funcionalidades

* Consulta `crt.sh` por domínio.
* Extrai subdomínios dos certificados encontrados.
* Remove entradas duplicadas e ordena a lista.
* Gera um arquivo de saída com nome baseado no domínio (`<dominio>_subdomains.txt`).

---

## 📋 Dependências

O script depende de ferramentas comuns em distribuições Linux:

* **curl** — para fazer requisições HTTP.
* **jq** — para manipular/parsear JSON (quando usado).
* **grep/sed/awk/sort/uniq** — utilitários tradicionais de texto (geralmente já instalados).

Instalação (Debian/Ubuntu):

```bash
sudo apt-get update && sudo apt-get install -y curl jq
```

> Observação: o script tenta usar `jq` quando a API retornar JSON; dependendo da versão do `crt.sh` e do formato de resposta, o uso de `jq` pode ser opcional.

---

## ⚙️ Como usar

1. Clone o repositório ou baixe o script.

2. Dê permissão de execução ao script:

```bash
chmod +x search_crtsh.sh
```

3. Execute o script passando o domínio alvo:

```bash
./search_crtsh.sh exemplo.com
```

Opcional: redirecione a saída para um arquivo ou use ferramentas adicionais para filtrar/formatar.

---

## 📄 Saída

O script criará um arquivo chamado `exemplo.com_subdomains.txt` (substituindo `exemplo.com` pelo domínio informado) no mesmo diretório, contendo uma lista de subdomínios únicos, ordenada.

Formato esperado do arquivo de saída:

```
www.exemplo.com
mail.exemplo.com
blog.exemplo.com
```

---

## 🔒 Aviso de uso responsável

Este script foi criado **para fins educacionais e de pesquisa de segurança**. Use-o apenas em domínios que você possui ou para os quais tenha a
