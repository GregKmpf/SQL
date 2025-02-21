SELECT * FROM Cliente;
SELECT * FROM Vendedor;
SELECT * FROM Produto;
SELECT * FROM Venda;
SELECT * FROM Itens;

--1- Faça uma consulta SQL para listar o nome e o valor de todos produtos com
--valor entre R$ 1500 e R$ 4500

select nome,valor from Produto where valor between 1500 and 4500;

--2- Faça uma consulta SQL para listar em ordem alfabética o nome dos clientes
--que não possuem telefone

select nome from Cliente where telefone is null;

--3- Faça uma consulta SQL para listar o número da venda e o valor 
--de desconto de todos os itens

select numVenda,desconto from Itens;


--4- Faça uma consulta SQL para listar o nome de todos vendedores 
--que possuem a letra A em seu nome e S em seu sobrenome 
--(tratar letras maiúsculas e minúsculas)

select nome from Vendedor WHERE LOWER(nome) LIKE '%a%' AND LOWER(nome) LIKE '% s%';


--5- Faça uma consulta SQL para listar o número de venda e data 
--das vendas realizadas no mês de outubro, independente o ano

select numero,data from Venda where extract(month from data) = 10;


--6- Faça o comando SQL para adicionar a coluna email na tabela 
--Cliente. Adicione por padrão o email cliente@upf.br
ALTER TABLE Cliente ADD email VARCHAR(40) 
default 'cliente@upf.br'; 

--7- Faça o comando SQL para diminuir em 1% o valor dos 
--produtos notebook da tabela Produto
UPDATE Produto
   set    valor = valor - (valor*1/100)
   WHERE  lower(nome) like '%notebook%'
