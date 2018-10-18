-- Suskaičiuokite kiek knygų kiekvieno autoriaus yra duomenų bazėje (įtraukdami autorius, kurie neturi knygų, bei neįtraukdami šių autorių).
-- 1.1 įtraukiant autorius neturinčius knygų:

select count(b.authorId) booksCount, a.authorId, a.name
from books b
right join authors a
on a.authorId = b.authorId
group by a.authorId;


--1.2 neįtraukiant autorių neturinčių knygų:

select count(b.authorId) booksCount, a.authorId, a.name
from books b
join authors a
on a.authorId = b.authorId
group by b.authorId;

-- 2.Pašalinkite autorius, kurie neturi knygų.

delete a
from authors a
left join  books b
on a.authorId = b.authorId
where bookId is null;
