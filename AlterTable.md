# Alter Table
## add column 
```mysql
  alter table \<name of table \> add column   \<name of column add\> \< type of column \> after \<column name\>;
```
* sample: ```mysql  alter table recordings add column   agentScore int(11) DEFAULT NULL after transfered_from_id; ```

## if add multi column 
```mysql
  ALTER TABLE recordings 
  ADD COLUMN `customerId` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  ADD COLUMN `referenceId` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  .
  .
  .
```
