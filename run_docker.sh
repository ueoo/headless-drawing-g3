# #!/usr/bin/env bash

IMAGE_NAME=ueoo/ubuntu2404-cuda124-xfce-vnc:blender-firefox-houdini


docker run --name=ubuntu-xfce-vnc -d --rm \
  --hostname=ubuntu \
  --gpus all \
  --privileged \
  --shm-size=2g \
  --tmpfs /run --tmpfs /run/lock --tmpfs /tmp \
  --cgroupns=host --cap-add SYS_BOOT --cap-add SYS_ADMIN \
  -v /sys/fs/cgroup:/sys/fs/cgroup \
  -v /svl/u/yuegao:/mnt/yuegao:rw \
  -p 5901:5901 -p 6901:6901 \
  ${IMAGE_NAME}
