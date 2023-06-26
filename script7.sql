create table if not EXISTS coun as
(select a."ФИО", count(c.id_author) as count_authors
from book b, authors a, connectionbooksauthors c
where b.id_books = c.id_books and c.id_author = a.id_author
group by a."ФИО"
order by count_authors desc);

select coun."ФИО" 
from coun, (select max(count_authors) as max_authers from coun) as max_count
where max_authers = coun.count_authors
order by max_authers desc limit 1;