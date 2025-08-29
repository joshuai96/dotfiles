#!/usr/bin/env bash

hypr_dir=${HOME}/.config/hypr
waybar_dir=${HOME}/.config/waybar
wallpapers_dir=${HOME}/.wallpapers
alacritty_dir=${HOME}/.config/alacritty
walker_dir=${HOME}/.config/walker

clean() {
    echo "deleting hypr dir..."
    rm -rf ${hypr_dir}

    echo "deleting waybar dir..."
    rm -rf ${waybar_dir}

    echo "deleting wallpapers dir..."
    rm -rf ${wallpapers_dir}

    echo "deleting alacritty dir..."
    rm -rf ${alacritty_dir}

    echo "deleting walker dir..."
    rm -rf ${walker_dir}
}

yay_packages() {
    yay -Syu walker-bin
}

conf_dir() {
    echo "creating hyper dir..."
    mkdir -p ${hypr_dir}

    echo "creating waybar dir..."
    mkdir -p ${waybar_dir}

    echo "creating wallpapers dir..."
    mkdir -p ${wallpapers_dir}

    echo "creating alacritty dir..."
    mkdir -p ${alacritty_dir}

    echo "creating walker dir..."
    mkdir -p ${walker_dir}
}

links() {
    echo "link hypr configs..."
    ln -s $(pwd)/hypr/* ${hypr_dir}

    echo "link waybar configs..."
    ln -s $(pwd)/waybar/* ${waybar_dir}

    echo "link wallpapers..."
    ln -s $(pwd)/wallpapers/* ${wallpapers_dir}

    echo "link alacritty configs..."
    ln -s $(pwd)/alacritty/* ${alacritty_dir}

    echo "link walker configs..."
    ln -s $(pwd)/walker/* ${walker_dir}
}

reload() {
    echo "reload hypr..."
    hyprctl reload

    echo "reload waybar..."
    pkill waybar && hyprctl dispatch exec waybar
}

while getopts 'cdlryh' opt; do
    case "$opt" in
    c)
        clean
        ;;
    d)
        conf_dir
        ;;
    l)
        links
        ;;
    y)
        yay_packages
        ;;
    r)
        reload
        ;;
    ? | h)
        echo "Usage: $(basename $0) [-c] [-d] [-l] [-r] [-y]"
        exit 1
        ;;
    esac
done
shift "$(($OPTIND - 1))"
