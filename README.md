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

Convert h264 image back to raw with nvidia gpu
```
ros2 run image_transport republish ffmpeg raw --ros-args --remap in/ffmpeg:=/camera/color/image_raw/ffmpeg --remap out:=/local/camera/color/image_raw -p ffmpeg_image_transport.encoding:=h264_venc
```