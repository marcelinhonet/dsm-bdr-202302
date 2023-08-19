drop database IF EXISTS bd_aula03;
create database bd_aula03;
\c bd_aula03;

create table tbl_cliente (codigo_cliente integer PRIMARY KEY, nome text NOT NULL, cidade text, endereco text);
create table tbl_titulo (codigo_titulo integer PRIMARY KEY, titulo text NOT NULL, descricao text, categoria text);
create table tbl_emprestimo (numero_emprestimo integer PRIMARY KEY, codigo_cliente integer, codigo_livro integer);
create table tbl_livro (cod_livro integer PRIMARY KEY, codigo_titulo integer references tbl_titulos,  status text);



create domain chk_status text check (value='disponivel' or value='alugado');
create domain chk_categoria text check (value='drama' or value='comedia');

drop table tbl_titulo;
create table tbl_titulo (codigo_titulo integer PRIMARY KEY, titulo text NOT NULL, descricao text, categoria text default 'drama' chk_categoria);

drop table tbl_livro;
create table tbl_livro (cod_livro integer PRIMARY KEY, codigo_titulo integer references tbl_titulos (codigo_titulo), status text ?????     );

drop table tbl_emprestimo;
create table tbl_emprestimo (numero_emprestimo integer PRIMARY KEY, codigo_cliente integer references tbl_cliente (codigo_cliente), codigo_livro integer references tbl_livros (cod_livro));