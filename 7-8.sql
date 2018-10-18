
-- sukuriam naują lentelę, kurioje laikysime knygų ir jas parašiusių autorių id
drop table if exists book_auth;
create table book_auth (bookId int, authorId int);

--kopijuojam reikšmes iš books lentelės
insert into book_auth (bookId, authorId) select bookId, authorId from books;

--ištrinam nereikalingą stulpelį authorId iš books lentelės, nes jį perkėlėm į naują lentelę
alter table books drop column authorId;

 -- išrenkam visas knygas su jų autoriais

 select b.title bookTitle, group_concat(a.name) authorName
 from books b
 join book_auth ba on b.bookId = ba.bookId
 join authors a on a.authorId = ba.authorId
 group by bookTitle;

 -- keičiam koduotę ir collate į unico.

 alter database knygos character set utf8 collate utf8_unicode_ci;
