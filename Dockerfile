FROM quay.io/footloose/ubuntu18.04

RUN apt-get update && apt-get install -y docker.io

COPY host/docker-daemon.json /etc/docker/daemon.json
COPY host/systemd-docker.conf /etc/systemd/system/docker.service.d/docker.conf

RUN apt-get install -y sudo kmod

#RUN echo "root ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/root

RUN systemctl start docker || true
