# Utility to list down the redis keys in one go from all nodes

for i in $(cat /etc/redis/nodes) ; do echo "************$i*************"; redis-cli -h $i -p <port> KEYS \*; done
