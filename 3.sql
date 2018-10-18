-- 1. Pašalinkite jūsų įrašytus autorius. (pagal ID).

delete from authors where (authorId = 8 or authorId = 9);

-- OPTIONAL pašalinu knygas kurioms priskirtas kažkuris iš ištrinamų autorių.

delete from books where (authorId = 8 or authorId = 9);
