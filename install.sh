#!/usr/bin/env bash

hypr_dir=${HOME}/.config/hypr
waybar_dir=${HOME}/.config/waybar

clean() {
    echo "deleting hypr dir..."
    rm -rf ${hypr_dir}
    
    echo "deleting waybar dir..."
    rm -rf ${waybar_dir}
}

yay_packages() {
    yay -Syu walker-bin google-chrome
}

conf_dir() {
    echo "creating hyper dir..."
    mkdir -p ${hypr_dir}
    
    echo "creating waybar dir..."
    mkdir -p ${waybar_dir}
}

links() {
    echo "link hypr config..."
    ln -s $(pwd)/hypr/* ${hypr_dir}

    echo "link waybar config..."
    ln -s $(pwd)/waybar/* ${waybar_dir}
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
