drop database IF EXISTS bd_sistema_bancario;
create database bd_sistema_bancario;
\c bd_sistema_bancario;
create table tabela01 (codigo integer);
create table tabela02 (codigo integer, nome text, telefone integer, endereco varchar);
create table tabela03 (codigo integer, ra integer);
create table tabela04 (codigo integer, email varchar);
create table tabela05 (codigo integer, idade integer);
create table cliente (NOME_CLIENTE varchar(40), CIDADE_CLIENTE varchar(40), ENDERECO_CLIENTE varchar(60));
create table conta (NUMERO_CONTA integer, NOME_AGENCIA varchar(40), SALDO real);
create table emprestimo (NUMERO_EMPRESTIMO integer, NOME_AGENCIA varchar(40), VALOR real);
create table agencia (NOME_AGENCIA varchar(40), CIDADE_AGENCIA varchar(40), DEPOSITOS integer);
drop table tabela01, tabela02, tabela03, tabela04, tabela05;
alter table cliente rename to tblcliente;
alter table conta RENAME TO tblconta;
alter table emprestimo RENAME TO tblemprestimo;
alter table agencia RENAME TO tblagencia;
alter table tblcliente ADD COLUMN IDADE integer;
alter table tblcliente ADD COLUMN CPF integer;
alter table tblagencia DROP COLUMN CIDADE_AGENCIA;
alter table tblagencia ADD COLUMN ENDERECO_AGENCIA varchar (60);

/*15082023*/
create schema MARCELO;
