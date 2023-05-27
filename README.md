# Detalhamento do Projeto de um Script de Criação de Diretórios e Usuários

Este documento serve como um guia detalhado para o projeto de um script em Bash que cria diretórios, grupos de usuários, usuários e define permissões de diretórios.

## Descrição do Script

O objetivo deste script em Bash é automatizar a criação de diretórios, grupos de usuários e usuários, bem como definir as permissões adequadas nos diretórios criados. O script segue as seguintes etapas:

1. Criação de Diretórios:
   - `/publica`: Diretório público.
   - `/adm`: Diretório para o grupo "GRP_ADM".
   - `/ven`: Diretório para o grupo "GRP_VEN".
   - `/sec`: Diretório para o grupo "GRP_SEC".

2. Criação de Grupos de Usuários:
   - `GRP_ADM`: Grupo para usuários com permissões administrativas.
   - `GRP_VEN`: Grupo para usuários da área de vendas.
   - `GRP_SEC`: Grupo para usuários da área de segurança.

3. Criação de Usuários e Associação a Grupos:
   - `carlos`, `maria`, `joao`: Usuários adicionados ao grupo "GRP_ADM".
   - `debora`, `sebastina`, `roberto`: Usuários adicionados ao grupo "GRP_VEN".
   - `josefina`, `amanda`, `rogerio`: Usuários adicionados ao grupo "GRP_SEC".

4. Especificação das Permissões dos Diretórios:
   - O diretório `/adm` tem como proprietário o usuário `root` e pertence ao grupo "GRP_ADM".
   - O diretório `/ven` tem como proprietário o usuário `root` e pertence ao grupo "GRP_VEN".
   - O diretório `/sec` tem como proprietário o usuário `root` e pertence ao grupo "GRP_SEC".
   - Os diretórios `/adm`, `/ven` e `/sec` têm permissões `770`, permitindo leitura, gravação e execução para o proprietário e grupo, e nenhuma permissão para outros usuários.
   - O diretório `/publica` tem permissões `777`, permitindo leitura, gravação e execução para todos os usuários.

5. Finalização do Script:
   - A mensagem "Finalizado" é exibida para indicar a conclusão do script.

## Pré-requisitos

- Este script foi escrito para ser executado em um ambiente que suporte a linguagem de script Bash.
- É necessário ter permissões suficientes para criar diretórios, grupos de usuários e usuários, além de definir permissões em diretórios existentes.

## Executando o Script

1. Abra um terminal ou prompt de comando.
2. Crie um novo arquivo de texto e copie o conteúdo do script nele.
3. Salve o arquivo com uma extensão `.sh`, por exemplo, `script.sh`.
4. Dê permissão de execução ao arquivo: `chmod +x script.sh`.
5. Execute o script: `./script.sh`.
6. Aguarde até que o script seja concluído.
7. Verifique se os diretórios, grupos e usuários foram criados corretamente, e se as
