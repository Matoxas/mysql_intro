--1.Straipsniai saugomi lentelėje News (newsId, text, date), straipsnio komentarai saugomi lentelėje Comments (commentId, text, date, newsId). Išrinkite 10 naujausių straipsnių su paskutiniu parašytu komentaru (newsId, newsDate, newsText, commentDate, commentText ).

select n.newsId newsId, n.date newsDate, n.text newsText, max(c.date) commentDate, c.commentText commentText
from (select * from news order by date desc limit 10) n
left join (select * from comments order by date desc limit 1) c
on c.newsId = n.newsId;
