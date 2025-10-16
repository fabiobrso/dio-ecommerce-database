-- PERSISTINDO DADOS --

-- CLIENTES
insert into clients (Fname, Minit, Lname, CPF, Address) values
('João', 'A', 'Silva', '12345678901', 'Rua das Flores, 100'),
('Maria', 'B', 'Oliveira', '98765432100', 'Av. Brasil, 250'),
('Carlos', 'C', 'Souza', '45678912345', 'Rua Nova, 88'),
('Ana', 'D', 'Lima', '32165498700', 'Rua Central, 300'),
('Fernanda', 'E', 'Pereira', '15975348620', 'Av. das Américas, 45');

-- PRODUTOS
insert into product (Pname, Classification_kids, Category, Avaliacao, Size) values
('Notebook', false, 'Eletrônicos', 4.5, '15pol'),
('Camiseta', false, 'Roupas', 4.2, 'M'),
('Boneca', true, 'Brinquedos', 4.8, '30cm'),
('Chocolate', true, 'Alimentos', 4.6, '100g'),
('Mesa', false, 'Móveis', 4.0, '1,5x1,5m');

-- PEDIDOS
insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, PaymentCash) values
(1, 'Confirmado', 'Compra de Notebook e Chocolate', 25.90, false),
(2, 'Em processamento', 'Compra de Camiseta e Boneca', 15.00, true),
(3, 'Confirmado', 'Compra de Mesa', 50.00, false),
(4, 'Cancelado', 'Compra de Chocolate', 10.00, true),
(5, 'Em processamento', 'Compra de Notebook e Camiseta', 20.00, false);

-- PAGAMENTOS
insert into payments (idPaymentOrder, PaymentTypes, Holder, CardNumber, Validity, limitAvailable) values
(1, 'Cartão', 'João A Silva', '1111222233334444', '12/29', 5000.00),
(2, 'Pix', 'Maria B Oliveira', null, null, 0.00),
(3, 'Boleto', 'Carlos C Souza', null, null, 0.00),
(4, 'Cartão', 'Ana D Lima', '5555666677778888', '05/27', 2000.00),
(5, 'Dois cartões', 'Fernanda E Pereira', '9999000011112222', '10/30', 8000.00);

-- ESTOQUE (PRODUCT STORAGE)
insert into productStorage (storageLocation, quantity) values
('Depósito Central', 100),
('Galpão 2', 50),
('Filial Norte', 30),
('Filial Sul', 80),
('Centro de Distribuição', 200);

-- FORNECEDORES
insert into supplier (SocialName, CNPJ, contact) values
('Tech Import Ltda', '11111111000101', '11999990000'),
('Moda Brasil S/A', '22222222000102', '11988887777'),
('Brinquedos Felizes', '33333333000103', '21977776666'),
('Doces & Cia', '44444444000104', '11966665555'),
('Móveis Planejados ME', '55555555000105', '11955554444');

-- VENDEDORES
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values
('TechHouse Ltda', 'TechHouse', '66666666000106', null, 'São Paulo', '11944443333'),
('FashionNow', 'FashionNow', '77777777000107', null, 'Rio de Janeiro', '21933332222'),
('KidsBrinq', 'KidsBrinq', '88888888000108', null, 'Curitiba', '41922221111'),
('ChocoTop', 'ChocoTop', null, '12312312311', 'Belo Horizonte', '31911112222'),
('MoveLar', 'MoveLar', '99999999000109', null, 'Salvador', '71900001111');

-- PRODUTO ↔ VENDEDOR
insert into productSeller (idPseller, idPproduct, prodQuantity) values
(1, 1, 20),
(2, 2, 40),
(3, 3, 50),
(4, 4, 30),
(5, 5, 10);

-- PRODUTO ↔ PEDIDO
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
(1, 1, 1, 'Disponível'),
(4, 1, 3, 'Disponível'),
(2, 2, 2, 'Disponível'),
(3, 2, 1, 'Sem estoque'),
(5, 3, 1, 'Disponível'),
(4, 4, 2, 'Disponível'),
(1, 5, 1, 'Disponível'),
(2, 5, 1, 'Disponível');

-- PRODUTO ↔ LOCAL DE ESTOQUE
insert into storageLocation (idLproduct, idLstorage, location) values
(1, 1, 'Depósito Central'),
(2, 2, 'Galpão 2'),
(3, 3, 'Filial Norte'),
(4, 4, 'Filial Sul'),
(5, 5, 'Centro de Distribuição');

-- PRODUTO ↔ FORNECEDOR
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
(1, 1, 50),
(2, 2, 100),
(3, 3, 60),
(4, 4, 80),
(5, 5, 40);