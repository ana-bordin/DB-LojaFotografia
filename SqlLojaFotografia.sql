CREATE DATABASE LojaFotografia;
USE LojaFotografia;

CREATE TABLE Endereco
(
	Cod INT IDENTITY(1,1) NOT NULL,
	CEP VARCHAR(8),
	Tipo_Logradouro VARCHAR(10) NOT NULL,
	Logradouro VARCHAR(100) NOT NULL,
	Bairro VARCHAR(50),
	Localidade VARCHAR(50) NOT NULL,
	UF CHAR(2)

	CONSTRAINT Unique_Endereco UNIQUE (Cod),
	CONSTRAINT pk_Endereco PRIMARY KEY (Tipo_Logradouro, Logradouro, Bairro, Localidade, UF)
);

ALTER TABLE Endereco
ALTER COLUMN UF CHAR(2) NOT NULL;

CREATE TABLE Pessoa
(
	Nome VARCHAR(100) NOT NULL,
	Complemento VARCHAR(50),
	Numero_Residencia INT NOT NULL,
	Telefone_Celular VARCHAR(11) NOT NULL,
	Telefone_Residencial VARCHAR(9),
	Codigo INT IDENTITY(1,1) NOT NULL,
	Codigo_Endereco INT NOT NULL,

	CONSTRAINT pk_Pessoa PRIMARY KEY (Codigo),
	CONSTRAINT fk_Pessoa FOREIGN KEY (Codigo_Endereco) REFERENCES Endereco(Cod)
);

CREATE TABLE Pessoa_Juridica
(
	CNPJ VARCHAR(14) NOT NULL,
	Inscricao_Estadual VARCHAR(12) NOT NULL,
	Nome_Responsavel VARCHAR(100) NOT NULL,
	Codigo_Pessoa INT NOT NULL,

	CONSTRAINT pk_Pessoa_Juridica PRIMARY KEY (CNPJ),
	CONSTRAINT fk_Pessoa_Juridica FOREIGN KEY (Codigo_Pessoa) REFERENCES Pessoa(Codigo)
);

CREATE TABLE Pessoa_Fisica
(
	CPF VARCHAR(11) NOT NULL,
	RG VARCHAR(7) NOT NULL,
	Sexo CHAR(1) NOT NULL,
	Data_Nascimento DATE NOT NULL,
	Codigo_Pessoa INT NOT NULL,

	CONSTRAINT pk_Pessoa_Fisica PRIMARY KEY (CPF),
	CONSTRAINT Unique_Pessoa_Fisica UNIQUE (RG),
	CONSTRAINT fk_Pessoa_Fisica FOREIGN KEY (Codigo_Pessoa) REFERENCES Pessoa(Codigo)
);

CREATE TABLE Funcionario
(
	Codigo INT IDENTITY(1,1) NOT NULL,
	Funcao VARCHAR(50) NOT NULL,
	Departamento VARCHAR(50) NOT NULL,
	CPF VARCHAR (11) NOT NULL,
	Telefone_Contato VARCHAR(11),
	Nome_Contato VARCHAR(50)

	CONSTRAINT pk_Funcionario PRIMARY KEY (Codigo),
	CONSTRAINT fk_Funcionario FOREIGN KEY (CPF) REFERENCES Pessoa_Fisica(CPF)
);

CREATE TABLE Cliente
(
	Telefone_Comercial VARCHAR(11),
	Codigo_Cliente INT IDENTITY(1,1) NOT NULL,
	Codigo_Pessoa INT NOT NULL,

	CONSTRAINT pk_Cliente PRIMARY KEY (Codigo_Cliente),
	CONSTRAINT fk_Cliente FOREIGN KEY (Codigo_Pessoa) REFERENCES Pessoa(Codigo),
	CONSTRAINT Unique_Cliente UNIQUE (Codigo_Pessoa)
);

CREATE TABLE Produto
(
	Codigo INT IDENTITY(1,1) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	Preco_Custo DECIMAL(10,2) NOT NULL,
	Preco_Venda DECIMAL(10,2) NOT NULL,
	Quantidade_Estoque INT NOT NULL,
	Quantidade_Minima INT NOT NULL,
	Tipo VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_Produto PRIMARY KEY (Codigo),
);

CREATE TABLE Venda
(
	Numero INT IDENTITY(1,1) NOT NULL,
	Data_Venda DATE NOT NULL,
	Valor DECIMAL(10,2) NOT NULL,
	Condição_Pagamento CHAR(1) NOT NULL,
	Quantidade_Itens INT NOT NULL,
	Codigo_Cliente INT NOT NULL,
	Codigo_Funcionario INT NOT NULL,
		
	CONSTRAINT pk_Venda PRIMARY KEY (Numero),
	CONSTRAINT fk_Venda1 FOREIGN KEY (Codigo_Cliente) REFERENCES Cliente(Codigo_Cliente),
	CONSTRAINT fk_Venda2 FOREIGN KEY (Codigo_Funcionario) REFERENCES Funcionario(Codigo),
);

CREATE TABLE Item_Venda
(
	Numero_Venda INT NOT NULL,
	Codigo_Produto INT NOT NULL,
	Quantidade_Item INT NOT NULL,
		
	CONSTRAINT pk_Item_Venda PRIMARY KEY (Numero_Venda, Codigo_Produto),
	CONSTRAINT fk_Item_Venda1 FOREIGN KEY (Numero_Venda) REFERENCES Venda(Numero),
	CONSTRAINT fk_Item_Venda2 FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo)
);
