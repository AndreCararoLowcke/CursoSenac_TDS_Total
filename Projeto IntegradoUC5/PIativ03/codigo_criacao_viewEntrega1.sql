USE PI;

CREATE VIEW View_Conversa AS
SELECT 
    C.Id AS Cliente_Id,
    C.Nome AS Cliente_Nome,
    C.Telefone AS Cliente_Telefone,
    CV.id AS Conversa_Id,
    CV.conteudo AS Conteudo_Conversa,
    TC.telefone_conversa AS Telefone_Conversa
FROM 
    Cliente AS C
INNER JOIN 
    Conversa AS CV ON C.Id = CV.id_cliente
INNER JOIN 
    Telefone_Conversa AS TC ON CV.id = TC.id_conversa;

SELECT * FROM View_Conversa WHERE Cliente_Nome LIKE '%Vanessa%';

SELECT * FROM View_Conversa WHERE Cliente_Nome LIKE '%André%';

SELECT * FROM View_Conversa WHERE Conteudo_Conversa LIKE '%quero%'; -- Pesquisa a string dentro da conversa