# Dotfiles

<span style="color: red;">**Disclaimer:**</span> This is heavy work in progress.

Dotfiles for my system bases on [EndeavourOS](https://endeavouros.com/).

Most of this is portable to other systems.

## Table of contents

- [Dotfiles](#dotfiles)
  - [Table of contents](#table-of-contents)
  - [TODO](#todo)
  - [Components](#components)
    - [OS](#os)
    - [Window manager](#window-manager)
    - [Application launcher](#application-launcher)
    - [Widgets](#widgets)
    - [Taskbar](#taskbar)
    - [Terminal emulator](#terminal-emulator)
    - [Shell prompt](#shell-prompt)
    - [Notification daemon](#notification-daemon)
    - [Filexplorer](#filexplorer)
  - [Colors](#colors)
  - [See also](#see-also)

## TODO

- [ ] Hypr
  - [x] Monitors
  - [x] Applications
  - [x] Hyprpaper
  - [x] Styles
  - [ ] other hypr stuff
- [ ] Walker
- [ ] Eww
- [x] Waybar
- [x] Alacritty
- [ ] Dunst
- [ ] gtk themes
- [ ] Misc

## Components

| Component                                     | Name              | Link                                                                                     |
| --------------------------------------------- | ----------------- | ---------------------------------------------------------------------------------------- |
| [OS](#os)                                     | EndeavourOS       | [endeavouros.com](https://endeavouros.com/)                                              |
| [Window manager](#window-manager)             | Hyprland          | [hypr.land](https://hypr.land/)                                                          |
| [Application launcher](#application-launcher) | Walker            | [github.com/abenz1267/walker](https://github.com/abenz1267/walker)                       |
| [Widgets](#widgets)                           | Eww               | [github.com/elkowar/eww](https://github.com/elkowar/eww)                                 |
| [Taskbar](#taskbar)                           | Waybar            | [github.com/Alexays/Waybar/](https://github.com/Alexays/Waybar/)                         |
| [Terminal emulator](#terminal-emulator)       | Alacritty         | [github.com/alacritty/alacritty](https://github.com/alacritty/alacritty)                 |
| [Shell prompt](#shell-prompt)                 | Starship          | [starship.rs](https://starship.rs/)                                                      |
| [Notification daemon](#notification-daemon)   | Dunst             | [github.com/dunst-project/dunst](https://github.com/dunst-project/dunst)                 |
| [Filexplorer](#filexplorer)                   | Nautilus          | [apps.gnome.org/Nautilus/](https://apps.gnome.org/Nautilus/)                             |

### OS

**Note to myself**: Use Grub!

### Window manager

Hyprland is installed by `pacman` via install using [`user_pkglist.txt`](user_pkglist.txt).

### Application launcher

Walker needs to be installed afterwards with `yay`.

### Widgets

Eww needs to be installed afterwards with `yay`.

### Taskbar

Waybar is installed by `pacman` via install using [`user_pkglist.txt`](user_pkglist.txt).

Design inspired by [kamlendras/waybar-macos-sequoia](https://github.com/kamlendras/waybar-macos-sequoia)

![waybar-screenshot](screenshots/waybar.png)

### Terminal emulator

Alacritty is installed by `pacman` via install using [`user_pkglist.txt`](user_pkglist.txt).

![alacritty-screenshot](screenshots/alacritty.png)

### Shell prompt

Starship with [joshuai96/starship-powerline-nord](https://github.com/joshuai96/starship-powerline-nord)

### Notification daemon

Dunst is installed by `pacman` via install using [`user_pkglist.txt`](user_pkglist.txt).

### Filexplorer

Nautilus is installed by `pacman` via install using [`user_pkglist.txt`](user_pkglist.txt).

## Colors

The awesome [Nord Theme](https://www.nordtheme.com/)

| Usage               | Name   | Hex     | RGB           |
| ------------------- | ------ | ------- | ------------- |
| Background          | nord0  | #2e3440 |  46,  52,  64 |
| Text                | nord4  | #d8dee9 | 216, 222, 233 |
| Hover               | nord2  | #434c5e |  67,  76,  94 |
| Visable             | nord7  | #8fbcbb | 143, 188, 187 |
| Active              | nord8  | #88c0d0 | 136, 192, 208 |
| Error / Urgent      | nord11 | #bf616a | 191,  97, 106 |
| Warning / Attention | nord13 | #ebcb8b | 235, 203, 139 |
| Good                | nord14 | #a3be8c | 163, 190, 140 |
| Specia highlight    | nord15 | #b48ead | 180, 142, 173 |

## See also

- [awesome-hyprland](https://github.com/hyprland-community/awesome-hyprland)
- [seful-Utilities](https://wiki.hypr.land/Useful-Utilities/)
