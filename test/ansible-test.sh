#!/bin/sh

DIR="/opt/some_directory"

echo -e "\e[1;33m Run test...\e[0m"

ansible-playbook /tmp/ansible-playbook.yml -v

if [ -d "$DIR" ]; then
  echo -e "\e[1;32m The ${DIR} folder is already exists.\e[0m"
else
  echo -e "\e[1;31m Error: ${DIR} not found. Test is failed.\e[0m"
  exit 1
fi
