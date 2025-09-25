--Primeira Query
SELECT 
	Nome,
	Ano
FROM Filmes

--Segunda Query
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

--Terceira Query
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome Like 'De volta para o futuro'

--Quarta Query
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

--Quinta Query
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--Sexta Query
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

----Sétima Query
SELECT
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC

--Oitava Query
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'M'

--Nona Query
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

----Decima Query
SELECT
	Filmes.Nome AS Filme,
	Generos.Genero AS Generos
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--Decima Primeira Query
SELECT
	Filmes.Nome,
	Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

--Decima Segunda Query
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id


