-- Inserção Dados

INSERT INTO Endereco (CEP, Tipo_Logradouro, Logradouro, Bairro, Localidade, UF) VALUES
('12345678', 'Rua', 'Rua das Flores', 'Centro', 'Cidade A', 'SP'),
('87654321', 'Avenida', 'Avenida Principal', 'Bairro Novo', 'Cidade B', 'RJ'),
('45678901', 'Praça', 'Praça da Liberdade', 'Vila Nova', 'Cidade C', 'MG'),
('23456789', 'Rua', 'Rua das Palmeiras', 'Jardim das Flores', 'Cidade D', 'RS'),
('78901234', 'Avenida', 'Avenida das Árvores', 'Centro', 'Cidade E', 'PR');

INSERT INTO Pessoa (Nome, Complemento, Numero_Residencia, Telefone_Celular, Telefone_Residencial, Codigo_Endereco) VALUES
('João Silva', 'Apto 101', 123, '99999999999', '123456789', 1),
('Maria Santos', NULL, 456, '98888888888', NULL, 2),
('Pedro Oliveira', 'Casa 2', 789, '97777777777', '987654321', 3),
('Ana Souza', NULL, 1011, '96666666666', NULL, 4),
('Carlos Pereira', 'Bloco B', 1213, '95555555555', '987654321', 5),
('Ana Souza', 'Apartamento 202', 456, '98765432109', '123456789', 2),
('Marcos Pereira', 'Casa 10', 789, '99999999999', NULL, 3),
('Gabriela Santos', 'Sala 5', 1011, '91111111111', NULL, 4),
('Pedro Oliveira', 'Bloco C', 1213, '92222222222', '987654321', 5),
('Camila Silva', 'Casa 15', 1415, '93333333333', '987654321', 1),
('FlashFusion Studios', 'Apto 101', 123, '99999999999', '123456789', 1),
('ShutterCraft Creations', 'Sala 5', 456, '98888888888', NULL, 2),
('LensMagic Productions', 'Bloco B', 789, '97777777777', '987654321', 3),
('CapturePro Studios', NULL, 1011, '96666666666', NULL, 4),
('PixelPerfect Photography', 'Sala 3', 1213, '95555555555', '987654321', 5);

INSERT INTO Pessoa_Juridica (CNPJ, Inscricao_Estadual, Nome_Responsavel, Codigo_Pessoa) VALUES
('12345678901234', '1234567890', 'Responsável 1', 6),
('98765432109876', '0987654321', 'Responsável 2', 7),
('45678901234567', '4567890123', 'Responsável 3', 8),
('34567890123456', '3456789012', 'Responsável 4', 9),
('23456789012345', '2345678901', 'Responsável 5', 10);

INSERT INTO Pessoa_Fisica (CPF, RG, Sexo, Data_Nascimento, Codigo_Pessoa) VALUES
('12345678901', '1234567', 'M', '1990-05-15', 1),
('98765432109', '9876543', 'F', '1985-10-20', 2),
('45678901234', '4567890', 'M', '1988-03-25', 3),
('34567890123', '3456789', 'F', '1975-12-10', 4),
('23456789012', '2345678', 'M', '1995-08-05', 5),
('11122233344', '1234587', 'F', '1980-05-15', 11),
('44455566677', '7654321', 'M', '1975-10-20', 12),
('88899900011', '9879043', 'F', '1990-03-25', 13),
('22233344455', '2675678', 'M', '1985-12-10', 14),
('55566677788', '8765432', 'F', '1995-08-05', 15);

INSERT INTO Funcionario (Funcao, Departamento, CPF, Telefone_Contato, Nome_Contato) VALUES
('Gerente', 'Administração', '11122233344', '12345678912', 'Alberto'),
('Vendedor', 'Vendas', '44455566677', NULL, NULL),
('Contador', 'Finanças', '88899900011', '12345678912', 'Jose Bento'),
('Atendente', 'Atendimento ao Cliente', '22233344455', '12345678912', 'Vladimir'),
('Analista', 'Tecnologia da Informação', '55566677788', NULL, NULL);

INSERT INTO Cliente (Telefone_Comercial, Codigo_Pessoa) VALUES
('11111111111', 1),
('22222222222', 2),
('33333333333', 3),
('44444444444', 4),
('55555555555', 5),
('66111111111', 6),
('22222229922', 7),
('33337777333', 12),
('66647454444', 8),
('55686555555', 9),
('33368676833', 10),
('44978977444', 11);

INSERT INTO Produto (Descricao, Preco_Custo, Preco_Venda, Quantidade_Estoque, Quantidade_Minima, Tipo) VALUES
('Câmera DSLR Canon EOS Rebel T7', 1500.00, 1999.99, 10, 5, 'Câmera'),
('Lente Canon EF 50mm f/1.8 STM', 100.00, 149.99, 15, 5, 'Lente'),
('Tripé Profissional', 50.00, 79.99, 20, 10, 'Acessório'),
('Cartão de Memória SanDisk 64GB', 20.00, 29.99, 50, 20, 'Acessório'),
('Softbox Iluminador de Estúdio', 80.00, 119.99, 8, 3, 'Acessório');

INSERT INTO Venda (Data_Venda, Valor, Condição_Pagamento, Quantidade_Itens, Codigo_Cliente, Codigo_Funcionario) VALUES
('2024-05-01', 1999.99, 'A', 1, 1, 1),
('2024-05-02', 149.99, 'B', 1, 2, 2),
('2024-05-03', 79.99, 'A', 1, 3, 3),
('2024-05-04', 29.99, 'B', 1, 4, 4),
('2024-05-05', 119.99, 'A', 1, 5, 5);

INSERT INTO Item_Venda (Numero_Venda, Codigo_Produto, Quantidade_Item) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);