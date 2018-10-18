-- 1. Papildykite autorių lentelę 2 įrašais;

insert into authors (name) values ('jack'), ('jimmy');

-- 2. Papildykite knygų lentelę, 3 įrašais apie knygas, kurių autorius įrašėte prieš tai.

insert into books (authorId, title, year) values (8, 'the best book in the world', 1999), (9, 'ordinary book', 2018);

-- 3. Pakeiskite vienos knygos autorių į kitą.

update books set authorId = 1 where authorId = 8; 
