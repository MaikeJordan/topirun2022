# topirun2022
Exercício – US 001 | Topirun 2022

Agendamento de apresentação para clientes Premium.

1 - Sendo um Agente de Vendas
2 - Posso de forma automática manter a minha agenda atualizada
3 - Para apresentação corporativa aos novos Clientes Premium com isso melhorar o relacionamento com o mesmo.

Critérios de Aceite

01 – Evento criado para Clientes Premiumcomfaturamento acima de $1.000.000,00

Dado que um Cliente (Account) com categoria (Category__c) “Premium” E Receita Anual acima de 1.000.000 (um milhão)
Quando ele for inserido, ou seja, for criado.

Então Um novo Evento deverá ser criado com os seguintes dados:
  Descrição (Description) : ‘Apresentar o portifolio de Produtos para o novo cliente com enfoque em nossa carteira Premium’
  Assunto (Subject) : ‘Apresentação instucional dos produtos Premium’
  Data e Hora de Início (StartDateTime) : Agendar para 1 dia após a data de criação do Cliente *¹
  Data e Hora de Fim (EndDateTime) : Deverá ter uma hora de duração
  Relativo a (WhatId) : Id do Cliente em questão.
  Tipo de Contato (ContactType__c) : ‘Telefônico’
  

02 – Evento não criado para Cliente Premiumcomfaturamentomenor que $1.000.000,00

Dado que um Cliente (Account) com categoria (Category__c) “Premium” E Receita Anual de que $600.000,00
Quando ele for inserido, ou seja, for criado.
Então não deverá ser criado nenhum evento para este cliente.

03 – Evento não criado para Cliente Standard

Dado um Cliente (Account) com categoria (Category__c) “Standard”
Quando ele for inserido, ou seja, for criado.
Então não deverá ser criado nenhum evento para este cliente.

Campos necessários

Data e Hora de Fim (EndDateTime) : Deverá ter uma hora de duração
Relativo a (WhatId) : Id do Cliente em questão.
Tipo de Contato (ContactType__c) : ‘Telefônico’

Pontos Obrigatórios

Criar campo Category (Category__c) em Account do Tipo Lista de Opções (picklist) com os valores pedidos acima e outros para melhorar o cenário de teste.
Criar campo Contact Type (ContactType__c) em Atividade e deixa-lo somente visível para o Evento.
Repositório Base : https://github.com/topinformation-public/topi-run-base-project
Clone esse projeto localmente e siga os passos definidos no README do projeto.
Para direcionar o projeto para seu repositório do github
git remote set-url origin https://github.com/seuuser/nomedorepo.git
Criar repositório privado ( nome-topi-run-2021) e adicionar o “ercarval” como colaborador
Todas as classes com 100% de cobertura, utilizando o padrão FixtureFactory para criação de Dados

Utilização do Pattern Repository
Utilização do Pattern TriggerHandler
Utilização do Patterns Filter, Enricher
