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
"enable mouse support
set mouse=a
set regexpengine=1


"enable solarized
"set background=light
"colorscheme solarized
"let g:solarized_termcolors=256

"enabler ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"enable for neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
" " Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:]*\t]\%(\.\|->\)\|\h\w*::'


call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'L9'
Plugin 'moll/vim-node'
Plugin 'ervandew/supertab'
Plugin 'altercation/vim-colors-solarized'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'chase/vim-ansible-yaml'
Plugin 'pearofducks/ansible-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'FuzzyFinder'
Plugin 'taglist.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'Chiel92/vim-autoformat'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattreduce/vim-mix'
Plugin 'jimenezrick/vimerl'
Plugin 'derekwyatt/vim-scala'
Plugin 'VimClojure'
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

"enable for emmet
let g:user_emmet_install_global = 0
let g:user_emmet_mode='n'
let g:user_emmet_leader_key='<C-Z>'
autocmd FileType html,css EmmetInstall


set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
set softtabstop=4
" " On pressing tab, insert 4 spaces
set expandtab
