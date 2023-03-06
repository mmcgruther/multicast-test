docker pull nicolaka/netshoot
docker run -it --rm --net container:udp-tester -v /var/run/docker/netns:/var/run/docker/netns --privileged=true nicolaka/netshoot bash