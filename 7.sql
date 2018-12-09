
-- sukuriam naują lentelę, kurioje laikysime knygų ir jas parašiusių autorių id

CREATE TABLE IF NOT EXISTS `Book_Authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;


--kopijuojam reikšmes iš books lentelės
INSERT INTO Book_Authors (bookId, authorId)
SELECT bookId, authorId from Books;

--ištrinam nereikalingą stulpelį authorId iš books lentelės, nes jį perkėlėm į naują lentelę
ALTER TABLE Books DROP COLUMN authorId;

 -- išrenkam visas knygas su jų autoriais

SELECT Books.title, GROUP_CONCAT(Authors.name) 
AS authors_name 
FROM Books 
LEFT JOIN Book_Authors 
ON Books.bookId=Book_Authors.bookId 
LEFT JOIN Authors 
ON Authors.authorId=Book_Authors.authorId 
GROUP BY Books.title;


 -- keičiam koduotę, papildom nauju įrašu, lietuvių kalba

ALTER TABLE Books CONVERT TO CHARACTER SET utf8 COLLATE utf8_lithuanian_ci;
UPDATE `Books` SET title='Žvaigždžių karai' WHERE bookId=9;