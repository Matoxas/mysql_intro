-- 1.Išrinkite visus įrašus iš Knygų lentelės:

SELECT Books.* FROM Books;

-- 2.Išrinkite tik Knygų pavadinimus abėcėles tvarka:

SELECT Books.title FROM Books ORDER BY Books.title ASC;

-- 3.Suskaičiuokite, kiek knygų kiekvieno autoriaus yra knygų lentelėje:

- SELECT Books.authorId, COUNT(Books.bookId) AS booksCount FROM Books GROUP BY Books.authorId;