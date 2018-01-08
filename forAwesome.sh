
vimRuntime=~/.vim_runtime/
vimPlugin=${vimRuntime}my_plugins/

if [ ! -d "${vimRuntime}" ]; then
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ${vimRuntime}install_awesome_vimrc.sh
fi

vimproc=${vimPlugin}vimproc.vim

if [ ! -d "${vimproc}" ]; then
    git clone https://github.com/Shougo/vimproc.vim.git ${vimproc}
    pushd ${vimproc}
    make
    # mingw32-make in windows
    popd
fi

tsuquyomi=${vimPlugin}tsuquyomi

if [ ! -d "${tsuquyomi}" ]; then
    git clone https://github.com/Quramy/tsuquyomi.git ${tsuquyomi}
fi

# TypeScript Syntax Hightlighting
yats=${vimPlugin}yats.vim

if [ ! -d "${yats}" ]; then
    git clone https://github.com/HerringtonDarkholme/yats.vim ${yats}
fi


youcompleteme=${vimPlugin}YouCompleteMe.vim

if [ ! -d "${youcompleteme}" ]; then
    git clone https://github.com/Valloric/YouCompleteMe ${youcompleteme}
    pushd ${youcompleteme}
    git submodule update --init --recursive
    python ./install.py
    popd
fi



vimrc=${vimRuntime}my_configs.vim


cp awesomeVimrc ${vimrc}


