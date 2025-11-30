this script for 2 method for use
this in a command 
```bash
while [ "$(mysql -se "SHOW SLAVE STATUS\G" | grep 'Seconds_Behind_Master:' | awk '{print $2}')" != "0" ]; do if mysql -e "SHOW SLAVE STATUS\G" | grep -q "Duplicate entry.*cake_sessions"; then  mysql -e "STOP SLAVE; SET GLOBAL SQL_SLAVE_SKIP_COUNTER = 1; START SLAVE;"; else echo ; mysql -se "SHOW SLAVE STATUS\G" | grep 'Seconds_Behind_Master:' ; fi ; sleep 3; done
```
for use this section first create file for example checkSalve.sh
and copy this into file and run command 
```bash
chmod +x checkSalve.sh && ./checkSalve.sh
```

```bash
#!/bin/bash

while [ "$(mysql -se "SHOW SLAVE STATUS\G" | grep 'Seconds_Behind_Master:' | awk '{print $2}')" != "0" ]; do
    # Check duplicate entry error (cake_sessions)
    if mysql -e "SHOW SLAVE STATUS\G" | grep -q "Duplicate entry.*cake_sessions"; then
        echo "Duplicate entry detected on cake_sessions table. Skipping 1 event..."
        mysql -e "STOP SLAVE; SET GLOBAL SQL_SLAVE_SKIP_COUNTER = 1; START SLAVE;"
    else
        echo "Seconds_Behind_Master: $SECONDS_BEHIND"
    fi

    sleep 3
done
```
