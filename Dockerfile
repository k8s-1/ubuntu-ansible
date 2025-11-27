# Test container for WSL Ansible playbook
FROM ubuntu:24.04

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Python and Ansible dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-apt \
    sudo \
    systemd

# Install Ansible
RUN pip3 install --break-system-packages ansible

# Create a test user (similar to WSL environment)
RUN useradd -m -s /bin/bash testuser && \
    echo "testuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Copy playbook files
COPY . /ansible/
WORKDIR /ansible

CMD ["/bin/bash"]
