-- 1.Išrinkite visus įrašus iš Knygų lentelės:

select * from books;

-- 2.Išrinkite tik Knygų pavadinimus abėcėles tvarka:

select title from books order by title asc;

-- 3.Suskaičiuokite, kiek knygų kiekvieno autoriaus yra knygų lentelėje:

select count(*) as books , authorId from books group by authorId;
