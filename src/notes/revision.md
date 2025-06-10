# SQL Quick Guide!

### Group By

- Muito útil de se usar junto com uma função agregada, como SUM(), AVG(), MAX(), MIN(), COUNT()

 EX.:
    Selecionar a pessoa com 100 celulares


```sql
SELECT *
FROM Pessoa p
INNER JOIN Celular c ON c.owner_id = p.id
GROUP BY p.id, p.name
HAVING(c.qtd) = 100;
```

### Union

- O Union pode ser usado para unir uma tabela à outra, pode ser usado em casos que as duas condições seguem caminhos completamente diferentes

    Ex.:
    Selecione as pessoas que moram na PB e as pessoas que possuem carro

```sql
SELECT *
FROM Person p
INNER JOIN Location l ON l.person_id = p.id 
WHERE l.uf = 'PB';

UNION

SELECT *
FROM Pessoa p
INNER JOIN Vehicle v ON v.owner_id = p.id;
```