select *from Livros;
--Faça uma consulta SQL para listar o nome e o valor de todos produtos com
--valor entre R$25 e R$ 40
select titulo,valor from Livros where valor between 25 and 40;


--Faça uma consulta SQL para listar em ordem alfabética o estoque dos clientes
--que não possuem telefone
select titulo,estoque from Livros where estoque is null;

--Faça uma consulta SQL para listar o  id e o valor 
-- de todos os itens

select  id,valor from Livros;

--4- Faça uma consulta SQL para listar o nome de todos vendedores 
--que possuem a letra A em seu nome e S em seu sobrenome 
--(tratar letras maiúsculas e minúsculas)
SELECT titulo 
FROM Livros
WHERE LOWER(titulo) LIKE '%a %' AND LOWER(titulo) LIKE '% a%';

