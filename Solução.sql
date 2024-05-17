-- 1
SELECT Nome, Ano FROM Filmes;

-- 2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC;

-- 3
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Nome = 'De Volta Para o Futuro';

-- 4
SELECT Nome FROM Filmes WHERE Ano = 1997;

-- 5
SELECT Nome FROM Filmes WHERE Ano > 2000;

-- 6
SELECT Nome FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7
SELECT Ano, COUNT(Ano) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M';

-- 9
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10
SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 11
SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério';

-- 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON	Atores.Id = ElencoFilme.IdAtor;
