FROM ubuntu
RUN  apt-get update &&  apt-get install -y ca-certificates curl gnupg && install -m 0755 -d /etc/apt/keyrings && (curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc;curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key |  gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg) &&  chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
ENV NODE_MAJOR 20
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" |  tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update && (apt-get install -y --no-install-recommends  qemu-system-x86 qemu-utils ovmf wget curl sudo x11-utils ffmpeg libblas3 i3-wm qemu-system-gui qemu-system-modules-opengl curl qemu-utils docker-compose-plugin socat docker.io docker-compose python3-pip nodejs python3-venv python3-full  cython3  jq bash build-essential autoconf automake gdb git libffi-dev zlib1g-dev libssl-dev unzip golang 2>&1|grep -v "Get:") && (apt-get clean all ||true) && which jq && which git && which curl  
