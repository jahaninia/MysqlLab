# add user for bi 
## Mysql
```mysql
grant select  on tgui.asterisk_queues to 'etl'@'<Replace IP>' identified by '5wHSQ8cL';
GRANT SELECT ON `tgui`.`asterisk_members` TO 'etl'@'<Replace IP>';
GRANT SELECT ON `tgui`.`agents` TO 'etl'@'<Replace IP>';     
GRANT SELECT ON `tgui`.`profiles` TO 'etl'@'<Replace IP>';              
GRANT SELECT ON `tgui`.`departments` TO 'etl'@'<Replace IP>';           
GRANT SELECT ON `tgui`.`recordings` TO 'etl'@'<Replace IP>';            
GRANT SELECT ON `tgui`.`ext_numbers` TO 'etl'@'<Replace IP>';           
GRANT SELECT ON `tgui`.`departments_profiles` TO 'etl'@'<Replace IP>';
GRANT SELECT ON `tgui`.`asterisk_datas` TO 'etl'@'<Replace IP>';  
GRANT SELECT ON `tgui`.`queues` TO 'etl'@'<Replace IP>';        
GRANT SELECT ON `tgui`.`asterisk_queue_entries` TO 'etl'@'<Replace IP>';
GRANT SELECT ON `tgui`.`asterisk_agents` TO 'etl'@'<Replace IP>';
```
## firewalld 
```bash
firewall-cmd --permanent --add-rich-rule='rule family="ipv4" source address="192.168.17.235" port port="3306" protocol="tcp" accept'
```
