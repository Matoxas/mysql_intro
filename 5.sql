-- 1.Išrinkite visus įrašus, tiek iš knygų tiek iš autorių lentelių, išrinkdami pasirinktinai du stulpelius.
-- atliekame full outer join
select b.title, a.name from books b left join authors on b.authorId = a.authorId
union
select b.title, a.name from books b right join authors on b.authorId = a.authorId;
