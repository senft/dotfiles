#!/bin/sh

for package in $(pacman -Qqe)
do
    echo "$(pacman -Qs "$package")"
    echo "$(pacman -Qi "$package" | grep "Required By")"
    read -p "Uninstall? [y/n] " -n 1 -r
    echo

    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Uninstall $package"
    fi
done
