-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Telefone VARCHAR(15),
    Email VARCHAR(50)
);

-- Criação da tabela Veículos
CREATE TABLE Veiculos (
    VeiculoID INT PRIMARY KEY AUTO_INCREMENT,
    Modelo VARCHAR(50),
    Ano INT,
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Criação da tabela Funcionários
CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Cargo VARCHAR(50),
    Salario FLOAT
);

-- Criação da tabela Serviços
CREATE TABLE Servicos (
    ServicoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    Preco FLOAT
);

-- Criação da tabela OrdensDeServico
CREATE TABLE OrdensDeServico (
    OrdemID INT PRIMARY KEY AUTO_INCREMENT,
    VeiculoID INT,
    FuncionarioID INT,
    ServicoID INT,
    Data DATE,
    Status VARCHAR(20),
    FOREIGN KEY (VeiculoID) REFERENCES Veiculos(VeiculoID),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID),
    FOREIGN KEY (ServicoID) REFERENCES Servicos(ServicoID)
);
