# Alter Table
## add column 
```mysql
  alter table \<name of table \> add column   \<name of column add\> \< type of column \> after \<column name\>;
```
* sample: ```mysql  alter table recordings add column   agentScore int(11) DEFAULT NULL after transfered_from_id; ```
