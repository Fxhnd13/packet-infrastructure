docker pull wurstmeister/kafka
docker network create kafka-net
docker run -d --name zookeeper --network kafka-net zookeeper
docker run -d --name kafka --network kafka-net -p 9092:9092 -e KAFKA_ADVERTISED_HOST_NAME=192.168.56.1 -e KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 -e KAFKA_CREATE_TOPICS="test-topic:1:1" wurstmeister/kafka