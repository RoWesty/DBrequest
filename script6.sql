select h."Название", count(b.id_house) as population
from formul f, book b, house h
where f.id_books = b.id_books and b.id_house = h.id_house
GROUP BY h."Название"
order by population desc