
#!/bin/bash
while [ "$(mysql -se "SHOW SLAVE STATUS\G" | grep 'Seconds_Behind_Master:' | awk '{print $2}')" != "0" ]; do 
  if mysql -e "SHOW SLAVE STATUS\G" | grep -q "Duplicate entry.*cake_sessions"; then  
    mysql -e "STOP SLAVE; SET GLOBAL SQL_SLAVE_SKIP_COUNTER = 1; 
    START SLAVE;"; 
  else 
     echo ; mysql -se "SHOW SLAVE STATUS\G" | grep 'Seconds_Behind_Master:' ; 
 fi ;
sleep 3; done
