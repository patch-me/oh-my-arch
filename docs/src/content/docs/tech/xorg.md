---
title: XORG
author: test
hero:
  title: 'XORG'
  tagline: The Display Server of our project
  author: "test"
  image:
    alt: XORG logo
    file: ../../../assets/xorg.png
  actions:
    - text: Xorg conf in our project
      link: https://wiki.archlinux.org/title/Xorg
      icon: external
    - text: Take a look on ArchWiki
      link: https://wiki.archlinux.org/title/Xorg
      icon: gitlab
---
# What is Xorg

## What is a display server
A display server manages graphical output and user input for a computer. 
It acts as an intermediary between applications and the underlying hardware, 
handling tasks like rendering graphics, window management, and input processing.


## XORG vs Wayland

Xorg was created in the 2000s and is starting to show its age,
which is why Wayland is considered better.

However, private software like Discord or Zoom,
not having been adapted to the transition, does not support screen sharing.

:::caution
**That's why we decided to continue with XORG.**
It may change with time

:::


# How to use XORG
## How to install and run

```bash
sudo pacman -S xorg-server xorg-xinit
```
You have succesfully installed xorg.
To start a session from a terminal verision, run 
(you must not be in a tmux session or already in a xorg session)
```bash
startx
```

## Configure XORG

Based on Xrandr file it permit to manage all screen layout
```bash title="/etc/X11/xorg.conf"
Section "Monitor"
    Identifier "eDP-1"
    Option "Primary" "true"
    Option "PreferredMode" "1920x1200"
EndSection
Section "Monitor"
    Identifier "DP-2"
    Option "Above"  "eDP-1"
    Option "PreferredMode" "1920x1080"
EndSection
Section "Monitor"
    Identifier "HDMI-1"
    Option "RightOf" "eDP-1"
    Option "PreferredMode" "2560x1440"
    Option  "Position" "1920 -720"
EndSection
```
