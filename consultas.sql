-- Recuperações simples com SELECT Statement
-- Listar todos os clientes
SELECT * FROM Clientes;

-- Filtros com WHERE Statement
-- Encontrar ordens de serviço que estão 'Em Andamento'
SELECT * FROM OrdensDeServico WHERE Status = 'Em Andamento';

-- Expressões para gerar atributos derivados
-- Calcular o custo total de uma ordem de serviço
SELECT OrdemID, (Servicos.Preco) AS CustoTotal FROM OrdensDeServico
JOIN Servicos ON OrdensDeServico.ServicoID = Servicos.ServicoID;

-- Ordenações dos dados com ORDER BY
-- Listar funcionários ordenados por salário decrescente
SELECT * FROM Funcionarios ORDER BY Salario DESC;

-- Condições de filtros aos grupos – HAVING Statement
-- Encontrar o número de ordens de serviço por status, apenas para status com mais de 1 ocorrência
SELECT Status, COUNT(*) FROM OrdensDeServico GROUP BY Status HAVING COUNT(*) > 1;

-- Junções entre tabelas
-- Listar detalhes das ordens de serviço, incluindo informações do cliente, veículo e serviço
SELECT OrdensDeServico.OrdemID, Clientes.Nome AS Cliente, Veiculos.Modelo AS Veiculo, Servicos.Nome AS Servico
FROM OrdensDeServico
JOIN Veiculos ON OrdensDeServico.VeiculoID = Veiculos.VeiculoID
JOIN Clientes ON Veiculos.ClienteID = Clientes.ClienteID
JOIN Servicos ON OrdensDeServico.ServicoID = Servicos.ServicoID;

