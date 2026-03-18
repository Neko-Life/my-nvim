#!/bin/bash

mkdir -p ~/.config/kitty/ 	~/.config/picom/
ln -s "$(pwd)/kitty.conf"	~/.config/kitty/kitty.conf
ln -s "$(pwd)/picom.conf"	~/.config/picom/picom.conf

if ( test -d ~/.config/nvim ); then
	mv ~/.config/nvim ~/.config/nvim-bck
	echo ~/.config/nvim moved to ~/.config/nvim-bck
fi
ln -s "$(pwd)/nvim"		~/.config/nvim

ln -s "$(pwd)/.gitconfig"	~/
ln -s "$(pwd)/.vimrc"		~/
ln -s "$(pwd)/.tmux.conf"	~/
# ln -s "$(pwd)/.Xresources"	~/

# ln -s "$(pwd)/makepkg.conf"	WHERE??
