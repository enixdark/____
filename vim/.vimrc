
if !empty($TERM_PROGRAM) && $TERM_PROGRAM == 'Apple_Terminal'
  set t_SH=
endif

if has('vim_starting')
  set nocompatible               " Be iMproved
endif

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = "elixir,elm,erlang,go,haskell,lua,ocaml,python,ruby,rust"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'scrooloose/nerdcommenter'
Plug 'chase/vim-ansible-yaml'
Plug 'chase/vim-ansible-yaml'
Plug 'hashivim/vim-terraform'
Plug 'rodjek/vim-puppet'

Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/CSApprox'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'avelino/vim-bootstrap-updater'
Plug 'sheerun/vim-polyglot'
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif
Plug 'Shougo/vimproc.vim', {'do': g:make}

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

if v:version >= 703
  Plug 'Shougo/vimshell.vim'
endif

if v:version >= 704
  "" Snippets
  Plug 'SirVer/ultisnips'
endif

Plug 'honza/vim-snippets'

"" Color
Plug 'tomasr/molokai'

"*****************************************************************************
"" Custom bundles
"*****************************************************************************

" elixir
Plug 'elixir-lang/vim-elixir'
Plug 'carlosgaldino/elixir-snippets'


" elm
"" Elm Bundle
Plug 'elmcast/elm-vim'


" erlang
Plug 'jimenezrick/vimerl'


" go
"" Go Lang Bundle
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}


" haskell
"" Haskell Bundle
Plug 'eagletmt/neco-ghc'
Plug 'dag/vim2hs'
Plug 'pbrisbin/vim-syntax-shakespeare'


" lua
"" Lua Bundle
Plug 'xolox/vim-lua-ftplugin'
Plug 'xolox/vim-lua-inspect'


" ocaml
"" OCaml Bundle
Plug 'def-lkb/ocp-indent-vim'


" python
"" Python Bundle
Plug 'davidhalter/jedi-vim'
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}


" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'


" rust
" Vim racer
Plug 'racer-rust/vim-racer'

" Rust.vim
Plug 'rust-lang/rust.vim'


"*****************************************************************************
"*****************************************************************************

"" Include user's extra bundle
if filereadable(expand("~/.config/nvim/local_bundles.vim"))
  source ~/.config/nvim/local_bundles.vim
endif

call plug#end()

" Required:
filetype plugin indent on


"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary


"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

let no_buffers_menu=1
if !exists('g:not_finish_vimplug')
  colorscheme molokai
endif

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  " IndentLine
  let g:indentLine_enabled = 1
  let g:indentLine_concealcursor = 0
  let g:indentLine_char = '┆'
  let g:indentLine_faster = 1

  
endif



"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

" vimshell.vim
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '

" terminal emulation
if g:vim_bootstrap_editor == 'nvim'
  nnoremap <silent> <leader>sh :terminal<CR>
else
  nnoremap <silent> <leader>sh :VimShellCreate<CR>
endif

"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

set autoread

"*****************************************************************************
"" Mappings
"*****************************************************************************

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>

"*****************************************************************************
"" Custom configs
"*****************************************************************************

" elixir


" elm
" elm-vim
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

" vim-polyglot
let g:polyglot_disabled = ['elm']

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:elm_syntastic_show_warnings = 1


" erlang
let erlang_folding = 1
let erlang_show_errors = 1


" go
" vim-go
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:syntastic_go_checkers = ['golint', 'govet']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

augroup completion_preview_close
  autocmd!
  if v:version > 703 || v:version == 703 && has('patch598')
    autocmd CompleteDone * if !&previewwindow && &completeopt =~ 'preview' | silent! pclose | endif
  endif
augroup END

augroup go

  au!
  au Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  au Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  au Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  au Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

  au FileType go nmap <Leader>dd <Plug>(go-def-vertical)
  au FileType go nmap <Leader>dv <Plug>(go-doc-vertical)
  au FileType go nmap <Leader>db <Plug>(go-doc-browser)

  au FileType go nmap <leader>r  <Plug>(go-run)
  au FileType go nmap <leader>t  <Plug>(go-test)
  au FileType go nmap <Leader>gt <Plug>(go-coverage-toggle)
  au FileType go nmap <Leader>i <Plug>(go-info)
  au FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)
  au FileType go nmap <C-g> :GoDecls<cr>
  au FileType go nmap <leader>dr :GoDeclsDir<cr>
  au FileType go imap <C-g> <esc>:<C-u>GoDecls<cr>
  au FileType go imap <leader>dr <esc>:<C-u>GoDeclsDir<cr>
  au FileType go nmap <leader>rb :<C-u>call <SID>build_go_files()<CR>

augroup END


" haskell
let g:haskell_conceal_wide = 1
let g:haskell_multiline_strings = 1
let g:necoghc_enable_detailed_browse = 1
autocmd Filetype haskell setlocal omnifunc=necoghc#omnifunc


" lua


" ocaml
" Add Merlin to rtp
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" Set Merlin as Syntastic checker for OCaml
let g:syntastic_ocaml_checkers = ['merlin']


" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#smart_auto_mappings = 0

" syntastic
let g:syntastic_python_checkers=['python', 'flake8']

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1

" Syntax highlight
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let python_highlight_all = 1


" ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2
augroup END

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" For ruby refactory
if has('nvim')
  runtime! macros/matchit.vim
else
  packadd! matchit
endif

" Ruby refactory
nnoremap <leader>rap  :RAddParameter<cr>
nnoremap <leader>rcpc :RConvertPostConditional<cr>
nnoremap <leader>rel  :RExtractLet<cr>
vnoremap <leader>rec  :RExtractConstant<cr>
vnoremap <leader>relv :RExtractLocalVariable<cr>
nnoremap <leader>rit  :RInlineTemp<cr>
vnoremap <leader>rrlv :RRenameLocalVariable<cr>
vnoremap <leader>rriv :RRenameInstanceVariable<cr>
vnoremap <leader>rem  :RExtractMethod<cr>


" rust
" Vim racer
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)


"*****************************************************************************
"*****************************************************************************

"" Include user's local vim config
if filereadable(expand("~/.config/nvim/local_init.vim"))
  source ~/.config/nvim/local_init.vim
endif

"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"Set how many lines of history VIM remembers
set history=1000

"Enable filetype plugin
filetype on
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Turn backup off
set nobackup
set noswapfile

"Use 'ack' for grep
set grepprg=ack
set grepformat=%f:%l:%m

"Update time for various features
set updatetime=1000

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text Options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Expand tabs into spaces
set expandtab
set tabstop=4
set shiftwidth=4

set smarttab
set linebreak

"Auto indent
set autoindent
set copyindent
set cino=:0,g0

"Use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

"Wrap lines
set wrap

"Avoid adding 2 spaces when joining lines together.
set nojoinspaces

"Make < and > match
set matchpairs+=<:>

"Enable extended % matching
runtime macros/matchit.vim

"Allow the cursor to go everywhere
set virtualedit=insert,onemore,block

set formatoptions-=t
set formatoptions+=c
set formatoptions+=r
set formatoptions+=q
" Remove comment leaders when joining lines
set formatoptions+=j

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set mapleader
let mapleader = ","

"Remap the semicolon to save typing colon
nnoremap ; :

"Turn off search highlighting
nnoremap <leader>h :nohlsearch<cr>

"Close the current buffer
nnoremap <leader>x :close!<cr>

"Resize the window
nnoremap <leader>el :set columns=220<cr>

"Resize the window
nnoremap <leader>ej :set columns=130<cr>

"Resize the window
nnoremap <leader>eh :set columns=90<cr>

"Remap ` and ' for marking
nnoremap ' `
nnoremap ` '

"Make Y consistent with C and D by yanking up to end of line
nnoremap Y y$

"Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

"Move between buffers with arrow keys
nnoremap <right> :bnext<cr>
nnoremap <left> :bprev<cr>

"A little bit of Emacs-style navigation.
inoremap <C-a> <home>
inoremap <C-e> <end>
nnoremap <C-a> 0
nnoremap <C-e> $

"Simplify omnicompletion
inoremap <C-space> <C-x><C-o>

"Enable resaving a file as root with sudo
cmap w!! w !sudo tee % >/dev/null

"Modify a few commands to work on local lines in a wrapped line
noremap k gk
noremap j gj
noremap H g^
noremap L g$

"Fast editing of .vimrc
nnoremap <leader>ev :exec ':e! '.g:vim_local.'/vimrc'<cr>

"Display the end of lines and tabs as special characters
set listchars=tab:>-,trail:+,eol:$
set list
nnoremap <silent> <leader>s :set nolist!<cr>

"Toggle line numbers
nnoremap <leader>n :set nu!<cr>

"Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

"Yank the entire buffer into the z register
nnoremap <leader>ya ggvG$"zy

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"
    let l:pattern = escape(@", "\\/.*$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")
    if a:direction == "b"
        execute "normal ?" . l:pattern . "^M"
    else
        execute "normal /" . l:pattern . "^M"
    endif
    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"Basically you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch("f")<CR>
vnoremap <silent> # :call VisualSearch("b")<CR>

" Remap TAB to insert spaces if there is text preceding the cursor
function! InsertTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '\S'
        let num_spaces = &ts - (virtcol('.') - 1) % &ts
        return repeat(' ', num_spaces)
    else
        return "\<tab>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTab()<cr>

" function to regenerate all tag types (ctags, cscope) for cwd
function! RegenerateTags()
    let tags = []
    " use the ctags found by taglist if it exists
    if exists('g:Tlist_Ctags_Cmd')
        let ctags = g:Tlist_Ctags_Cmd
    else
        let ctags = 'ctags'
    endif

    if executable(ctags)
        call system(ctags . ' -R --c++-kinds=+p --fields=+iaS --extra=+q --python-kinds=-i .')
        if (v:shell_error)
            echoerr "Error executing ctags"
        else
            call add(tags, ctags)
        endif
    endif

    if executable('cscope')
        " TODO
    endif

    echomsg "Tags generated: " . join(tags, ', ')
endfunction
nnoremap <leader>rt :call RegenerateTags()<CR>

"Function to execute a file beginning with a shebang
function! RunShebang()
  if (match(getline(1), '^\#!') == 0)
    :!./%
  else
    echo "No shebang in this file."
  endif
endfunction
nnoremap <leader>ex :call RunShebang()<CR>

"Switch CWD based on current file
nnoremap <leader>cd cd %:p:h<CR>

"Switch CWD based on current file only for current buffer
nnoremap <leader>lcd lcd %:p:h<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists("autocommands_loaded")
    let autocommands_loaded = 1

    "Reload vimrc when GUI is started
    if has("gui_running")
        autocmd GUIEnter * exec 'source '.g:vim_local.'/vimrc'
    endif
    
    "Switch CWD based on current file
    "autocmd BufEnter * lcd %:p:h
    
    "When vimrc is edited, reload it
    autocmd BufWritePost vimrc exec 'source '.g:vim_local.'/vimrc'
    
    "Refresh syntax highlighting when buffer is entered or written
    autocmd BufEnter * syntax sync fromstart
    autocmd BufWritePost * syntax sync fromstart
    
    " Have Vim jump to the last position when reopening a file
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif

    function! SetMakeProg()
        set makeprg=make
        if filereadable("Makefile")
            set makeprg=make
        elseif filereadable("SConstruct")
            set makeprg=scons
        endif
    endfunction
    autocmd BufEnter * call SetMakeProg()

    "Avoid showing whitespace while in insert mode
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd BufEnter,BufRead,BufNewFile,InsertLeave * match ExtraWhitespace /\s\+$/

    "Expand tabs
    "autocmd BufEnter,BufNewFile *.c,*.cpp,*.h,*.hpp,*.cxx,*.hxx set expandtab
    "autocmd BufLeave *.c,*.cpp,*.h,*.hpp,*.cxx,*.hxx set expandtab&

    "Enable cindent
    autocmd BufEnter,BufNewFile *.c,*.cpp,*.h,*.hpp,*.cxx,*.hxx,*.m,*.mm,*.java set cindent
    autocmd BufLeave *.c,*.cpp,*.h,*.hpp,*.cxx,*.hxx,*.m,*.mm,*.java set cindent&

    "Enable omni completion
    autocmd FileType * set omnifunc=syntaxcomplete#Complete
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS

    autocmd FileType html,css,scss,sass,javascript,htmljinja setlocal sw=2 ts=2
    autocmd FileType yaml setlocal sw=2 ts=2 et

    autocmd FileType rst setlocal sw=2 ts=2 et

endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File Formats
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Favorite filetypes
set ffs=unix,dos,mac

"Default to LaTeX
let g:tex_flavor = "latex"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn on syntax highlighting
syntax on

"Set background
set background=dark
colorscheme base16-default-dark

if has("gui_running")
    if g:mysys == "mac"
        set guifont=Inconsolata:h14
    elseif g:mysys == "dos"
        set guifont=Consolas:h12
    endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set terminal title
set title

"Highlight the current line and column
set cursorline
set cursorcolumn

"Set # of lines visible around the cursor when scrolling vertically
set scrolloff=3

"Turn on Wild Menu
set wildmenu

"Completion similarly to shell
set wildmode=list:longest,full

"Ignore some files
set wildignore+=*.jpg,*.gif,*.png,*.hdr,*.gz
set wildignore+=*.o,*.obj,*.so,*.a,*.dll,*.dylib
set wildignore+=.DS_Store,Thumbs.db
set wildignore+=*.svn,*.git,*.swp,*.pyc,*.class,*/__pycache__/*

"Always show current position
set ruler

"Command bar is 2-high
set cmdheight=1

"Show line number
set number

"Do not redraw when running macros .. lazyredraw
"set lazyredraw

"Change buffer without saving
set hidden

"Switch to existing tab then window when switching buffers
set switchbuf=usetab

"Set backspace to work in more situations
set backspace=eol,start,indent

"Ignore case when searching
set ignorecase
set infercase

"Use case-sensitive search if a capital letter is present
set smartcase

"Search dynamically
set incsearch

"Highlight search items but turn it off when program starts
set hlsearch
nohlsearch

"Set magic!
set magic

"Turn off all sound on errors
set noerrorbells
set novisualbell
set vb t_vb=

"Show matching brackets
set showmatch

"How many tenths of a second to blink
set mat=2

"Set window size if using a GUI
if has("gui_running") && !exists('gui_resized')
    let gui_resized = 1

    set lines=60
    set columns=90
endif

"Insert-mode completion option
set completeopt=menuone,longest,preview

"Remove a lot of visual effects like scrollbar/menu/tabs from GUI
set guioptions=a

"Always hide the statusline
set laststatus=0

"Show as much of the last line as possible
set display=lastline

"Show a little more status about running command
set showcmd

"Show more context when completing ctags
set showfulltag

"Setup higlighting of whitespace that shouldn't be there
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"Setup highlighting of lines longer than 80 characters
"highlight OverLength ctermbg=red ctermfg=white guibg=red
"2match OverLength /\%>80v.\+/

if v:version >= 703
    "Highlight the column to avoid long lines
    set colorcolumn=81
    highlight ColorColumn ctermbg=8 guibg=#222222

    "Show the relative number instead of absolute line number
    "set relativenumber
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => Ctrl-P
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    nnoremap <leader>ff :CtrlP<cr>
    nnoremap <leader>fb :CtrlPBuffer<cr>
    let g:ctrlp_switch_buffer = 1
    let g:ctrlp_custom_ignore = 'env\|.tox'
    let g:ctrlp_max_files = 0
    let g:ctrlp_max_depth = 50
    "If the CWD has git submodules, try to set working path based on
    "the CWD instead of the local submodule
    let g:ctrlp_working_path_mode = 'wra'

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => HTML Indent
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:html_indent_inctags = "html,body,head,tbody"
    let g:html_indent_script1 = "inc"
    let g:html_indent_style1 = "inc"

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => NERDTree
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let NERDTreeIgnore = [
        \ '\.jpg$', '\.gif$', '\.png$', '\.hdr$', '\.gz$'
        \ , '\.o$', '\.obj$', '\.so$', '\.a$', '\.dll$', '\.dylib$'
        \ , '\.svn$', '\.git$', '\.swp$', '\.pyc$', '\.DS_Store'
        \ , '\.class$', '__pycache__' ]
    let NERDTreeWinPos = "right"
    let NERDTreeQuitOnOpen = 0
    let NERDTreeHighlightCursorline = 1
    let NERDTreeDirArrows = 0
    let NERDTreeMinimalUI = 1
    let NERDTreeShowHidden = 1
    nnoremap <leader>do :NERDTreeToggle<cr>

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => Syntastic
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:syntastic_check_on_open = 1
    let g:syntastic_python_checkers = ['flake8']
    let g:syntastic_python_flake8_args = '--ignore=E123,E261,E301,E302,E305,E306,E731,W503 --max-line-length=89'
    let g:syntastic_full_redraws = 1
    "let g:syntastic_enable_signs = 0

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => JSX
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:jsx_ext_required = 0

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => CSV
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:csv_no_conceal = 1

nmap <c-s> :w<CR>
nmap <c-q> :q<CR>

autocmd FileType c,cpp,java,scala,go,rust,rc let b:comment_leader = '// '
autocmd FileType sh,rb,ex,py,elixir,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex,erlang,erl              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
set mouse=a
