#!/bin/bash
vundleDirectory=~/.vim/bundle/Vundle.vim

if [ -x "$(command -v vim)" ]; then

	if [ ! -d "$vundleDirectory" ]; then
		echo 'vim exist'
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	else 
		echo 'vundle.vim exist'
	fi
	echo -n "Is overwrite vimrc(yes:enter y key):"
	read operate
	if [ "$operate" == "y" ]; then
		cp ./.vimrc ~/.vimrc
		
		vim +PluginInstall +qall	
		echo 'done'
	else
		echo 'cancal successfully'
	fi
fi


