-- 1 

SELECT 
	Nome,
	Ano
FROM FILMES

-- 2

SELECT
	Nome,
	Ano,
	Duracao
FROM FILMES
ORDER BY Ano

-- 3

SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
ORDER BY Ano, Duracao

-- 4

SELECT *FROM Filmes
WHERE ANO = '1997'
ORDER BY Ano,Duracao

-- 5

SELECT *FROM Filmes
WHERE ANO > '2000'
ORDER BY Ano,Duracao


-- 6

SELECT *FROM Filmes
WHERE Duracao > '100' AND Duracao < '150' 
ORDER BY Duracao ASC

--7
SELECT Ano, COUNT(*) AS quantidade_de_filmes
FROM Filmes
GROUP BY ANO
ORDER BY quantidade_de_filmes DESC;

--8
SELECT
	ID,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M' 
ORDER BY PrimeiroNome, UltimoNome, Genero

--9
SELECT
	ID,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F' 
ORDER BY PrimeiroNome, UltimoNome, Genero

--10
SELECT 
 	Filmes.Nome,
	Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT 
 	Filmes.Nome,
	Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

--12
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
 	
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
