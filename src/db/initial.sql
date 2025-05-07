SELECT Nome, Endereco 
FROM Empregado
WHERE Depto = 'd4';

SELECT Nome, Salario 
FROM Empregado
WHERE Depto = "d5" AND Salario > 2000 AND Sexo = "F" ;

SELECT *
FROM Projeto
WHERE Local = "Recife" AND Depart = "d7";

SELECT * 
FROM Dependente
INNER JOIN Empregado e ON t.Mat = e.Matricula;

SELECT CodProj, Nome, Horas 
FROM Projeto p
INNER JOIN Alocacao a ON a.CodigoP = p.CodProj
INNER JOIN Projeto p ON a.Matric = p.Matricula