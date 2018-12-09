-- 1.Išrinkite visus įrašus, tiek iš knygų tiek iš autorių lentelių, išrinkdami pasirinktinai du stulpelius.

SELECT Authors.name COLLATE latin1_general_ci AS text, Authors.authorId
FROM Authors
UNION ALL
SELECT Books.title COLLATE latin1_general_ci AS text, Books.authorId
From Books;

