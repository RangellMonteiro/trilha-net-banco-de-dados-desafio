-- 1° consulta
SELECT Nome, Ano FROM Filmes

-- 2° Consulta
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

--3° Consulta
SELECT Nome, Ano, Duracao FROM Filmes
Where Nome = 'De Volta para o Futuro'

--4° Consulta
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--5° Consulta
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--6° Consulta
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC

--7° Consulta
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC, MAX(Duracao) DESC;

--8° Consulta
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
Where Genero = 'M'

--9° Consulta
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
Where Genero = 'F'
ORDER BY PrimeiroNome


--10° Consulta
SELECT f.Nome AS Nome, g.Genero AS Genero
FROM Filmes f
JOIN Generos g ON f.Id = g.Id
ORDER BY Nome, Genero

--11° Consulta
SELECT f.Nome AS NomeFilme, g.Genero AS NomeGenero
FROM Filmes f
JOIN Generos g ON f.ID = g.ID
WHERE g.Genero = 'Mistério';

--12° Consulta
SELECT f.Nome AS Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.ID
JOIN Atores a ON ef.ID = a.Id;







