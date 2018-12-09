-- Suskaičiuokite kiek knygų kiekvieno autoriaus yra duomenų bazėje (įtraukdami autorius, kurie neturi knygų, bei neįtraukdami šių autorių).
-- 1.1 įtraukiant autorius neturinčius knygų:

SELECT Authors.name, COUNT(Books.authorId) AS bookCount 
FROM Authors 
LEFT JOIN Books 
ON Books.authorId=Authors.authorId 
GROUP BY Authors.name;

--1.2 neįtraukiant autorių neturinčių knygų:

SELECT Authors.name, COUNT(Books.authorId)AS bookCount
FROM Authors
INNER JOIN Books
ON Books.authorId=Authors.authorId
GROUP BY Authors.name;

-- 2.Pašalinkite autorius, kurie neturi knygų.

 DELETE Authors
 FROM Authors
 LEFT JOIN Books
 ON Books.authorId=Authors.authorId
 WHERE Books.authorId IS NULL;

