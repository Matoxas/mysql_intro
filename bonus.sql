--1.Straipsniai saugomi lentelėje News (newsId, text, date), straipsnio komentarai saugomi lentelėje Comments (commentId, text, date, newsId). Išrinkite 10 naujausių straipsnių su paskutiniu parašytu komentaru (newsId, newsDate, newsText, commentDate, commentText ).

select n.newsId newsId, n.date newsDate, n.text newsText, c.date commentDate, c.commentText commentText
from (select * from news order BY date desc limit 10) n
join comments c on c.newsId = n.newsId
having max(c.date);
