#!/bin/bash

mkdir -p ~/.config/kitty/ ~/.config/picom/

ln -s $(pwd)/kitty.conf ~/.config/kitty/kitty.conf
ln -s $(pwd)/picom.conf ~/.config/picom/picom.conf
