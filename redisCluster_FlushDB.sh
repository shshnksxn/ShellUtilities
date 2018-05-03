# Utility to list down the redis keys in one go from all nodes
# Specify cluster server list file in for loop and Specify <port> number 
 
for i in $(cat /etc/redis/nodes) ; do echo "************$i*************"; redis-cli -h $i -p <port> FLUSHDB; done
