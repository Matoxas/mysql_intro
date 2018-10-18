--1.Straipsniai saugomi lentelėje News (newsId, text, date), straipsnio komentarai saugomi lentelėje Comments (commentId, text, date, newsId). Išrinkite 10 naujausių straipsnių su paskutiniu parašytu komentaru (newsId, newsDate, newsText, commentDate, commentText ).

select n.newsId newsId, n.date newsDate, n.text newsText, c.date commentDate, c.commentText commentText
from (select * from news order by date desc limit 10) n
left join (select newsId from comments where newsId=n.newsId order by date DESC LIMIT 1) c
on (n.newsId=c.newsId);
