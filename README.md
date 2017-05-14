# rabbitmq-docker
Dockerfile for RabbitMQ on top of Windows Server Core container

```
docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" rabbitmq1
```
