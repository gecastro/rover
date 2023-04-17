# rover

## Install docker containers

```
docker build -t mavros
docker create -t --restart unless-stopped --name mavros --net=host -v /dev:/dev --privileged mavros
docker start mavros
```