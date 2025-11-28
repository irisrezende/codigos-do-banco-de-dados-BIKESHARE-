SELECT
    U.Nome,
    COUNT(A.AluguelID) AS TotalAlugueis,
    SUM(A.ValorTotal) AS ValorGastoTotal
FROM
    USUARIO U
JOIN
    ALUGUEL A ON U.UsuarioID = A.UsuarioID
GROUP BY
    U.UsuarioID
ORDER BY
    ValorGastoTotal DESC;

2. CONSULTA: Detalhes dos Aluguéis que usaram a Tarifa Promocional (WHERE, JOIN)
SELECT
    A.Aluguel ID,
    U.Nome AS NomeUsuario,
    T.NomeTarifa,
    A.DuracaoMinutos,
    A.ValorTotal
FROM
    ALUGUEL A
JOIN
    USUARIO U ON A.UsuarioID = U.UsuarioID
JOIN
    TARIFA T ON A.TarifaID = T.TarifaID
WHERE
    T.NomeTarifa LIKE 'Promocional%';

-- 3. CONSULTA: Bicicletas que estão em Manutenção (WHERE, ORDER BY)
SELECT
    BikeID,
    Modelo,
    DataAquisicao
FROM
    BICICLETA
WHERE
    Status = 'MANUTENCAO'
ORDER BY
    DataAquisicao ASC;

4. CONSULTA: Estações mais Populares como Ponto de Início (GROUP BY, LIMIT)
SELECT
    E.Nome AS NomeEstacao,
    COUNT(A.AluguelID) AS TotalInicios
FROM
    ESTACAO E
JOIN
    ALUGUEL A ON E.EstacaoID = A.EstacaoInicio
GROUP BY
    E.EstacaoID
ORDER BY
    TotalInicios DESC
LIMIT 2;
