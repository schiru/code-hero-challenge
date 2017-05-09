# Revenue-Query Challenge

```sql
DESCRIBE payments;

| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | int(11)      | NO   | PRI | NULL    | auto_increment |
| user_id       | int(11)      | YES  | MUL | NULL    |                |
| amount        | int(11)      | YES  |     | NULL    |                |
| issue_date    | datetime     | YES  | MUL | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
```

Write a query that returns the best performing day of 2016 in terms of total revenue.
