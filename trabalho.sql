select *from Cidade;
select *from Localização;
select *from Cliente;
select *from Agente;
select *from Imovel;
select *from Transação;
--updates na tabela
update Cliente set nome='Bruce wayne' where cpf='345.678.901-22';
update Transação set valor=850000 where codigo=1234;
update Imovel set valorbase=250000 where codigo=5;
update Imovel set valorbase=800000 where valorbase>900000 and codigo=9;
--inner joins
SELECT 
    Transação.codigo AS CodigoTransação,
    Cliente.nome AS NomeCliente,
    Agente.nome AS NomeAgente,
    Transação.valor AS ValorTransação
FROM 
    Transação INNER JOIN Cliente ON Transação.IdCliente = Cliente.id
INNER JOIN Agente ON Transação.IdAgente = Agente.id;

