-- 1. Recuperação simples com SELECT
select Fname, Lname, CPF from clients;

-- 2. Filtros com WHERE
select * from product where Category = 'Roupas' and Avaliacao > 4.0;

-- 3. Expressões derivadas
select 
    idOrder as Número_Ordem,
    sendValue as Envio,
    (sendValue * 1.1) as TotalComTaxa
from orders;

-- 4. Ordenação
select * from orders order by sendValue desc;

-- 5. Agrupamento com HAVING
select 
    idOrderClient, 
    count(*) as TotalPedidos, 
    sum(sendValue) as TotalGasto
from orders
group by idOrderClient
having totalGasto > 20;

-- 6. Junção entre tabelas:
select 
    c.Fname,
    c.Lname,
    o.idOrder,
    o.orderDescription,
    p.PaymentTypes
from clients c
join orders o on c.idClient = o.idOrderClient
join payments p on o.idOrder = p.idPaymentOrder;
