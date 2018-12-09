-- 1. Papildykite autorių lentelę 2 įrašais;

 INSERT INTO Authors SET Authors.name="jack";
 INSERT INTO Authors SET Authors.name="jimmy";

-- 2. Papildykite knygų lentelę, 3 įrašais apie knygas, kurių autorius įrašėte prieš tai.

 INSERT INTO Books SET Books.title="first book ever", Books.authorId=8 , Books.year=2000;
 INSERT INTO Books SET Books.title="the best book in the world", Books.authorId=8, Books.year=2018;
 INSERT INTO Books SET Books.title="ordinary book", Books.authorId=9, Books.year=1992;

-- 3. Pakeiskite vienos knygos autorių į kitą.

UPDATE Books SET Books.authorId=8 WHERE Books.bookId=1;
