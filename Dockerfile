FROM ubuntu:20.04

RUN apt update

# Needed by the script.
run apt install -y sudo

# tzdata prompts when apt is run with sudo in the script.
RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata

COPY BuildLinux.sh .
RUN DEBIAN_FRONTEND=noninteractive ./BuildLinux.sh -u
