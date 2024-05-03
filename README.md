# rover

## Install docker containers

```
docker build -t mavros
docker create -t --restart unless-stopped --name mavros --net=host -v /dev:/dev --privileged mavros
docker start mavros
```

To use ffmpeg_image_transport with h264_vaapi in the Lattepanda, it needs to edit the file /etc/modprobe.d/i915.conf

```
options i915 enable_guc=3
```