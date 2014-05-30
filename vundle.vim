set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
" UI

Plugin 'scrooloose/nerdtree' " File navigation tool
Plugin 'jistr/vim-nerdtree-tabs' " binds each GVim tab with a NERDTree tab
Plugin 'Raimondi/delimitMate' " Insertion mode autocompletion
Plugin 'tomtom/tcomment_vim' " Commenting tool
Plugin 'plasticboy/vim-markdown' " Add colors for specific markdowns
Plugin 'vim-scripts/indenthtml.vim' " Indents html files
Plugin 'bling/vim-airline' " Powerline
Plugin 'Valloric/YouCompleteMe' " Completion tool 

call vundle#end()
filetype plugin indent on 

