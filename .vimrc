set term=screen-256color
set cindent
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set ruler
colorscheme kolor
set paste

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree' " 加入NERDTree
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
let mapleader = ","
nmap <leader>ne :NERDTree<cr>"
