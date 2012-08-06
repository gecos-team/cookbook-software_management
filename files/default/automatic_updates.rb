provides "log"

log Mash.new unless log
log[:automatic_updates] = Mash.new unless log[:automatic_updates]
 
filedate="head -n 1 /var/log/automatic-updates.err"
filecontent="tail -n +2 /var/log/automatic-updates.err"

status,stdout,stderr=run_command(:command => filedate)
log["automatic_updates"]["date"] = stdout

status,stdout,stderr=run_command(:command => filecontent)
log["automatic_updates"]["content"] = stdout

