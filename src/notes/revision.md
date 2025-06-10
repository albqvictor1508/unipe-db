# SQL Quick Guide!

### Group By

- Muito útil de se usar junto com uma função agregada, como SUM(), AVG(), MAX(), MIN(), COUNT()

 EX.:
    Selecionar a pessoa com 100 celulares

sql
```
SELECT *
FROM Pessoa p
INNER JOIN Celular c ON c.owner_id = p.id
GROUP BY p.id, p.name
HAVING(c.qtd) = 100;
```