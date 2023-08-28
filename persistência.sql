-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (Nome, Telefone, Email) VALUES
('João Silva', '123-456-7890', 'joao@email.com'),
('Maria Oliveira', '987-654-3210', 'maria@email.com');

-- Inserindo dados na tabela Veículos
INSERT INTO Veiculos (Modelo, Ano, ClienteID) VALUES
('Honda Civic', 2020, 1),
('Ford Focus', 2019, 2);

-- Inserindo dados na tabela Funcionários
INSERT INTO Funcionarios (Nome, Cargo, Salario) VALUES
('Carlos', 'Mecânico', 3000.00),
('Ana', 'Recepcionista', 2000.00);

-- Inserindo dados na tabela Serviços
INSERT INTO Servicos (Nome, Preco) VALUES
('Troca de Óleo', 100.00),
('Alinhamento', 150.00);

-- Inserindo dados na tabela OrdensDeServico
INSERT INTO OrdensDeServico (VeiculoID, FuncionarioID, ServicoID, Data, Status) VALUES
(1, 1, 1, '2023-08-28', 'Concluído'),
(2, 1, 2, '2023-08-27', 'Em Andamento');
