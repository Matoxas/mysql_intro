
-- Paruoškite duomenų bazės atnaujinimo skriptą. (tik struktūros).

CREATE TABLE IF NOT EXISTS `Book_Authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

ALTER TABLE Books DROP COLUMN authorId;
ALTER TABLE Books CONVERT TO CHARACTER SET utf8 COLLATE utf8_lithuanian_ci;