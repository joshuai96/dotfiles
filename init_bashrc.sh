#!/usr/bin/env bash

# This script helps to set up bashrc remotely on a new machine.

set -Eeuo pipefail

bashrc_file="${HOME}/.bashrc"
bashrc_dir="${bashrc_file}.d/"

remote="https://raw.githubusercontent.com/joshuai96/dotfiles/refs/heads/main/"

env_settings="010-env.sh"
path_settings="020-path.sh"
xdg_settings="030-xdg.sh"
ssh_agent_settings="040-ssh-agent.sh"
nix_settings="050-nix.sh"
starship_settings="999-starship.sh"

settings=(
  "${env_settings}"
  "${path_settings}"
  "${xdg_settings}"
  "${ssh_agent_settings}"
  "${nix_settings}"
  "${starship_settings}"
)

echo "Setting up ${bashrc_dir}"
mkdir -p -- ${bashrc_dir}

for setting in "${settings[@]}"; do
  echo "Fetching ${setting}..."
  curl -sSLf ${remote}bashrc.d/${setting} -o ${bashrc_dir}${setting}
done

if [[ -f "$bashrc_file" ]]; then
  echo "Backing up ${bashrc_file}..."
  mv -- "$bashrc_file" "$bashrc_file.bak"
fi

echo "Fetching new .bashrc..."
curl -sSLf ${remote}bashrc -o ${bashrc_file}
