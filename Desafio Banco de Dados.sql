1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano
FROM Filmes

2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC

3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE ID = 28

4 - Buscar os filmes lançados em 1997

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

5 - Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100
AND   Duracao < 150
Order By Duracao ASC

7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT COUNT(Nome) Quantidade, Ano
FROM Filmes
GROUP By Ano
ORDER By Quantidade DESC

8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero like 'M'

9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero like 'F'

10 - Buscar o nome do filme e o gênero

SELECT A.Nome, C.Genero
FROM Filmes A
LEFT JOIN FilmesGenero B ON
	A.Id = B.IdFilme
LEFT JOIN Genero C ON
	B.IdGenero = C.Id
	
11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT A.Nome, C.Genero
FROM Filmes A
LEFT JOIN FilmesGenero B ON
	A.Id = B.IdFilme
LEFT JOIN Genero C ON
	B.IdGenero = C.Id
WHERE C.Genero like 'Mistério'

12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT A.Nome, C.PrimeiroNome, C.UltimoNome, B.Papel
FROM Filmes A
LEFT JOIN ElencoFilme B ON
	A.Id = B.IdFilme
LEFT JOIN Atores C ON
	B.IdAtor = C.Id