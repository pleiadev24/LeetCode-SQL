-- Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.

/*Person table:
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+
Output: 
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+

*/

-- SOLUTION-- 

DELETE p
FROM Person p
INNER JOIN Person p1
WHERE p.email = p1.email AND 
p.id > p1.id;
