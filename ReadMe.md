# Terraform

O bloco provider {} descreve características de um provedor específico, como a região da AWS.


Alternativa correta! No bloco de provider {} podemos colocar várias características relacionadas com o provedor diretamente, inclusive se tivermos múltiplos provedores teremos múltiplos deste blocos, um para cada provider.

Alternativa correta
O bloco resource {} descreve o tipo de recurso a ser criado, como uma instância, por exemplo.


Alternativa correta! No bloco de resource {} vamos colocar todas as configurações relacionadas com o recurso que queremos criar, podendo ser instâncias, bancos de dados, entre outras opções.

## Faça como eu fiz: Fazendo o deploy

Com o arquivo de configuração criado e com o Terraform instalado, podemos fazer o deploy da primeira máquina na AWS. Para fazermos o deploy, abra o terminal, e siga até a pasta onde o seu arquivo main.tf se encontra.

Uma vez na pasta com o arquivo main.tf, devemos executar terraform init, para o terraform poder obter os plugins de comunicação com o provider. Só é necessário executar esse comando se alterarmos algo no bloco terraform {}, já que o comando vai atualizar verificar e atualizar as configurações e plugins.

Após a mensagem de sucesso, podemos verificar as mudanças que serão feitas utilizando o comando terraform plan, que retornará uma lista com as configurações da instância e um resumo, onde podemos ver a quantidade de máquinas a serem criadas, modificadas ou destruídas.

Assim que confirmamos que todas as alterações serão como planejamos, nesse caso, será uma máquina t2.micro, com a ami correta e na região escolhida, podemos usar o terraform apply, que irá trazer mais uma vez todo o planejamento e perguntará se está tudo de acordo com o que queremos, se estiver tudo certo, digitamos “yes” (sim em inglês) e o terraform irá pressionar toda a máquina.

## Comunicacao SSH 

ssh -i "iac-ec2-animes.pem" ubuntu@ec2-54-161-174-251.compute-1.amazonaws.com

A chave tem que estar com permissao para leitura do seu usario ou seja

`chnmod 400 *.pem`

ansible-playbook playbook.yml --private-key iac-ec2-animes.pem -i hosts.yml 
-u ubuntu 
