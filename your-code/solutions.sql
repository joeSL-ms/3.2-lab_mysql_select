SELECT
(a.au_id) as AUTHOR_ID,
(au_lname) as LAST_NAME,
(au_fname) as FIRST_NAME,
(p.pub_name) as PUBLISHER,
count(t.title_id) as TITLE_COUNT
from authors AS a
join titleauthor AS ta 
ON a.au_id = ta.au_id
join titles AS t
on ta.title_id = t.title_id
join publishers AS p
on t.pub_id=p.pub_id
group by a.au_id, p.pub_name 
order by a.au_id desc;

