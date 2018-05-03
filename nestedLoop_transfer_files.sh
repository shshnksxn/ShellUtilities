# Prerequisite: Clustered hosts is ssh passphased keys shared.
# listOffiles: Files to transfer mentioned specified in master file

for i in `cat /etc/hosts|awk '{print $1}'` ; do for j in `cat listOffiles`; do scp $j root@$i:$j ;echo  "****************DONE for $i:$j*****************";done;done;
