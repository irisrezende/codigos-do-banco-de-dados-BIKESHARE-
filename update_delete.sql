COMANDOS UPDATE (ATUALIZAÇÃO DE DADOS)
1. UPDATE: Atualiza o status da bicicleta após a Manutenção (simulando a conclusão)
Supondo que a manutenção da bicicleta SN003C foi concluída.
UPDATE BICICLETA
SET
    Status = 'DISPONIVEL'
WHERE
    BikeID = 'SN003C';

2. UPDATE: Atualiza o registro de Manutenção para incluir a data de fim.
UPDATE MANUTENCAO
SET
    DataFim = '2025-11-27 15:30:00'
WHERE
    BikeID = 'SN003C' AND DataFim IS NULL;

3. UPDATE: Aumenta em 10% o valor da Tarifa Padrão.
UPDATE TARIFA
SET
    ValorPrimeiraHora = ValorPrimeiraHora * 1.10,
    ValorMinutoExcedente = ValorMinutoExcedente * 1.10
WHERE
    NomeTarifa = 'Tarifa Padrao';


COMANDOS DELETE (EXCLUSÃO DE DADOS)


1. DELETE: Excluir a tarifa promocional (após sua vigência).
 É seguro deletar a TARIFA 3 (Fim de Semana) se ela não estiver ligada a nenhum ALUGUEL. 
No nosso caso, assumimos que ela não foi usada para testar o DELETE.
DELETE FROM TARIFA
WHERE TarifaID = 3;

2. DELETE: Excluir um usuário recém-cadastrado que não realizou aluguéis.
Assumindo que o Usuário 3 (Carlos Dias) não tem ALUGUEIS, o DELETE será permitido.
DELETE FROM USUARIO
WHERE UsuarioID = 3;

3. DELETE: Excluir o registro de Manutenção, que agora é histórico e a bicicleta está disponível.
DELETE FROM MANUTENCAO
WHERE ManutencaoID = 1;
