
vimRuntime=~/.vim_runtime/
vimPlugin=${vimRuntime}/my_plugins/

if [ ! -d "${vimRuntime}" ]; then
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ${vimRuntime}/install_awesome_vimrc.sh
    exit 0
fi

vimproc=${vimPlugin}vimproc.vim

if [ ! -d "${vimproc}" ]; then
    git clone https://github.com/Shougo/vimproc.vim.git ${vimproc}
    pushd ~/.vim/bundle/vimproc.vim
    make
    # mingw32-make in windows
    popd
fi

tsuquyomi=${vimPlugin}tsuquyomi

if [ ! -d "${tsuquyomi}" ]; then
    git clone https://github.com/Quramy/tsuquyomi.git ${tsuquyomi}
fi


vimrc=${vimPlugin}my_configs.vim

cp awesomeVimrc vimrc


