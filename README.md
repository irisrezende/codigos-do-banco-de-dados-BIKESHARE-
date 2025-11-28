Este repositório contém os scripts SQL (Data Manipulation Language - DML) para a criação, povoamento e manipulação de dados do minimundo Sistema de Gerenciamento de Aluguel de Bicicletas
Urbanas (BikeShare). O projeto segue um Modelo Lógico normalizado até a 3ª Forma Normal (3FN).

Visão Geral do Projeto
O objetivo deste projeto é simular a implementação de um banco de dados relacional para gerenciar o sistema de compartilhamento de bicicletas BikeShare.

Entidades Principais:

Mestres: USUARIO, BICICLETA, ESTACAO, TARIFA.

Transacionais: ALUGUEL (tabela central), MANUTENCAO.

O repositório está organizado nos seguintes arquivos, que devem ser executados em ordem:

01_create_tables.sql	Comandos CREATE TABLE.	Criação da estrutura lógica do banco de dados (DDL), definindo chaves primárias e estrangeiras.
02_insert_data.sql	Comandos INSERT INTO.	Povoamento das tabelas com dados de teste coerentes com o minimundo.
03_select_queries.sql	Comandos SELECT.	Demonstração de consultas complexas (JOIN, GROUP BY, WHERE) para extrair informação útil.
04_update_delete.sql	Comandos UPDATE e DELETE.	Demonstração da manipulação de dados e do respeito às regras de integridade referencial.

Como Executar os Scripts

Pré-requisitos:

Um SGBD (Sistema Gerenciador de Banco de Dados) instalado (ex: MySQL, PostgreSQL).

Uma ferramenta de desenvolvimento (ex: MySQL Workbench ou DBeaver).

Passos de Execução:

Criação do Banco: No seu SGBD, crie um novo banco de dados chamado BikeShareDB.

Criação das Estruturas: Execute o script 01_create_tables.sql para criar todas as 6 tabelas e suas restrições.

Inserção de Dados: Execute o script 02_insert_data.sql.

Verificação: Consulte as tabelas (SELECT * FROM USUARIO;) para confirmar o povoamento.

Testes de Consulta: Execute os comandos no script 03_select_queries.sql individualmente.

Analise os resultados para entender como os JOINs funcionam.

Testes de Manipulação: Execute os comandos no script 04_update_delete.sql.

Observe como os comandos DELETE com chaves estrangeiras ativas podem falhar, confirmando a integridade do sistema.

Foco na Integridade e Normalização

O modelo garante:

3ª Forma Normal (3FN): Informações como detalhes da TARIFA são armazenadas apenas uma vez na tabela TARIFA, sendo referenciadas por uma FK na tabela ALUGUEL.

Integridade Referencial: A tabela central ALUGUEL utiliza Chaves Estrangeiras (FKs) obrigatórias que impedem a inserção de um aluguel sem um USUARIO ou uma BICICLETA válidos.
