#! /usr/bin/env bash 
set -euo pipefail

dotfiles_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
dotfiles_config_dir=$dotfiles_dir/.config
home_dir=$HOME
config_dir=$HOME/.config

create_symlinks() {
    local dir=$1
    local target_dir=$2
    local pattern=$3
    for file in $(find $dir -maxdepth 1 -name "$pattern" -not -name ".git" -not -name ".dotfiles" -not -name ".config"); do
      filename=$(basename $file)
      if [ ! -L "$target_dir/$filename" ]; then
        ln -sf $file $target_dir/$filename
      fi
    done
}

create_symlinks_dir() {
    local dir=$1
    local target_dir=$2
    for file in $(find $dir -maxdepth 1 -type d -not -name ".config" -printf '%f\n'); do
      if [ ! -L "$target_dir/$file" ]; then
        ln -sf $dir/$file $target_dir/$file
      fi
    done
}

create_symlinks $dotfiles_dir $home_dir ".*"
create_symlinks_dir $dotfiles_config_dir  $config_dir 

