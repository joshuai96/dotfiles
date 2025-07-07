#!/usr/bin/env bash

yay_packages() {
    yay -Syu walker-bin google-chrome
}

conf_dir() {
    echo "creating hyper dir..."
    mkdir ${HOME}/.config/hypr
}

links() {
    ln -s ${HOME}/.config/hypr hypr/hyprland.conf
}

main() {
    # yay_packages
    conf_dir
}

main