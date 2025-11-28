 1. POVOAMENTO DA TABELA TARIFA (Tabela mestre)
INSERT INTO TARIFA (NomeTarifa, ValorPrimeiraHora, ValorMinutoExcedente, DataInicioVigencia) VALUES 
('Tarifa Padrao', 5.00, 0.50, '2025-01-01'),
('Promocional 30min', 0.00, 0.75, '2025-10-01'),
('Fim de Semana', 7.50, 0.40, '2025-03-01');

2. POVOAMENTO DA TABELA ESTACAO (Tabela mestre)
INSERT INTO ESTACAO (Nome, Latitude, Longitude, CapacidadeTotal) VALUES
('Estacao Central', -15.7942, -47.8822, 20),
('Praca das Flores', -15.7880, -47.8700, 15),
('Terminal Sul', -15.8050, -47.8900, 25);

3. POVOAMENTO DA TABELA USUARIO (Tabela mestre)
INSERT INTO USUARIO (Nome, CPF, Email, Telefone, DataCadastro) VALUES
('Ana Silva', '11122233344', 'ana.s@exemplo.com', '61987654321', '2025-10-05'),
('Bruno Costa', '55566677788', 'bruno.c@exemplo.com', '61999887766', '2025-10-10'),
('Carlos Dias', '99900011122', 'carlos.d@exemplo.com', '61988884444', '2025-11-01');

4. POVOAMENTO DA TABELA BICICLETA (Tabela mestre)
INSERT INTO BICICLETA (BikeID, Modelo, Status, DataAquisicao) VALUES
('SN001A', 'Urbana', 'DISPONIVEL', '2025-09-01'),
('SN002B', 'Eletrica', 'EM_USO', '2025-09-01'),
('SN003C', 'Urbana', 'MANUTENCAO', '2025-10-15'),
('SN004D', 'Urbana', 'DISPONIVEL', '2025-10-15');

5. POVOAMENTO DA TABELA ALUGUEL (Transacional)
Aluguel 1: Bruno, Tarifa Padrao (durou 50min, 1a hora)
INSERT INTO ALUGUEL (UsuarioID, BikeID, TarifaID, EstacaoInicio, EstacaoFim, HoraInicio, HoraFim, DuracaoMinutos, ValorTotal, Avaliacao) VALUES
(2, 'SN001A', 1, 1, 2, '2025-11-28 10:00:00', '2025-11-28 10:50:00', 50, 5.00, 5);

Aluguel 2: Ana, Tarifa Promocional (durou 45min, excedeu 15min)
INSERT INTO ALUGUEL (UsuarioID, BikeID, TarifaID, EstacaoInicio, EstacaoFim, HoraInicio, HoraFim, DuracaoMinutos, ValorTotal, Avaliacao) VALUES
(1, 'SN002B', 2, 2, 3, '2025-11-28 11:30:00', '2025-11-28 12:15:00', 45, (0.00 + 15 * 0.75), 4); -- ValorTotal: 11.25

6. POVOAMENTO DA TABELA MANUTENCAO (Relacionamento com Bicicleta)

INSERT INTO MANUTENCAO (BikeID, DataInicio, DataFim, DescricaoProblema, CustoTotal) VALUES
('SN003C', '2025-11-20 09:00:00', NULL, 'Pneu traseiro furado e revisao basica.', 85.00);
