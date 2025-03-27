# Relatório de Comandos Git

## Introdução
Este documento descreve e explica os comandos Git utilizados no processo de inicialização, conexão remota e sincronização de repositórios. Também são fornecidas sugestões para adição de imagens ilustrativas.

## Comandos Utilizados

### 1. Inicialização do Repositório
```sh
git init
```
Este comando cria um novo repositório Git local no diretório atual. Ele inicializa a pasta `.git`, que armazenará todas as informações do versionamento do código.

**Sugestão de imagem:** Captura de tela mostrando a saída do comando `git init` no terminal.

### 2. Adicionando um Repositório Remoto
```sh
git remote add origin https://github.com/AndreCararoLowcke/UC1ativ01.git
```
Esse comando vincula o repositório local a um repositório remoto hospedado no GitHub. A URL fornecida indica o repositório de destino.

**Sugestão de imagem:** Exemplo de como verificar os repositórios remotos com `git remote -v`.

### 3. Obtendo os Arquivos do Repositório Remoto
```sh
git pull origin master
```
Esse comando baixa e mescla os arquivos do branch `master` do repositório remoto para o repositório local. Ele garante que os arquivos locais estejam sincronizados com os do GitHub.

**Sugestão de imagem:** Captura de tela mostrando o processo de `git pull` e a confirmação dos arquivos baixados.

## Conclusão
Esses comandos permitem inicializar um repositório local, conectá-lo a um repositório remoto e sincronizar os arquivos entre os dois. O uso adequado desses comandos é essencial para o gerenciamento eficiente do versionamento de projetos.
