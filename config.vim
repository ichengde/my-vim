syntax enable

set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc
set number
set paste

filetype indent on
" tab space
set shiftwidth=2

" font config
set gfn=IBM\ Plex\ Mono:h10,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
" code format
nmap <Leader>- :set autochdir<cr>
nmap <Leader>= gg=G

source ~/.vim_runtime/folderSet.vim
source ~/.vim_runtime/pluginSet.vim

" ubuntu include path
set path+=/usr/include/**

" some project can use it, deprecated
set path+=./**

"ctags
set tags=./tags,tags,/usr/include/tags
