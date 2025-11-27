#!/bin/bash
set -e

docker build -f Dockerfile -t ansible-test .

echo "Testing Ansible playbook (tags: $TAGS)..."
docker run --rm -it \
    -v "$(pwd):/ansible" \
    -w /ansible \
    ansible-test \
    bash -c "
        cd /ansible && \
        ansible-playbook main.yaml \
            --connection=local \
            --inventory=localhost, \
            --diff \
            --extra-vars 'ansible_become_password='
    "

echo "Test completed!"
