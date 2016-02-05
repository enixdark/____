set nocompatible              " be iMproved, required
filetype off                  " required
"syntax on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"set background=dark
set runtimepath^=~/.vim/bundle/vim-erlang-runtime/
syntax enable
"set background=dark
set number
colorscheme inkpot

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'chase/vim-ansible-yaml'
Plugin 'pearofducks/ansible-vim'
Plugin 'taglist.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'Chiel92/vim-autoformat'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattreduce/vim-mix'
Plugin 'jimenezrick/vimerl'
Plugin 'derekwyatt/vim-scala'
call vundle#end()            " required
filetype plugin indent on    " required
" show existing tab with 4 spaces width
"
if has("autocmd")
	filetype plugin indent on
	    "
	    "         " Use actual tab chars in Makefiles.
	autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
    "let g:indent_guides_auto_colors = 1
    "autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=green ctermbg=3
    "autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
endif
set ts=4 sw=4 et
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
" set ts=4 sw=4 et
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"hi IndentGuidesOdd  ctermbg=white
"hi IndentGuidesEven ctermbg=lightgrey

let g:EasyMotion_smartcase=1
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
set softtabstop=4
" " On pressing tab, insert 4 spaces
set expandtab
