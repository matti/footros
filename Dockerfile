FROM quay.io/footloose/ubuntu18.04

RUN apt-get update && apt-get install -y \
  sudo kmod locales

RUN echo exit 0 > /usr/sbin/policy-rc.d

# COPY host/docker-daemon.json /etc/docker/daemon.json
# COPY host/systemd-docker.conf /etc/systemd/system/docker.service.d/docker.conf

#RUN mkdir -p /etc/systemd/system/kubelet.service.d
#COPY host/05-pharos-kubelet.conf /etc/systemd/system/kubelet.service.d

#RUN apt-get install -y 'docker.io=18.06.1*'
#RUN systemctl start docker || true
#RUN systemctl enable docker.service || true
