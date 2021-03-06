"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/ryosuke/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/denite.nvim')

  " Custom plugins
  call dein#add('vim-airline/vim-airline')                     " Status/tab line for Vim
  call dein#add('scrooloose/nerdtree')                         " Tree explorer for time
  call dein#add('altercation/vim-colors-solarized')            " Precise colors for Solarized terminals
  call dein#add('airblade/vim-gitgutter')                      " Shows added/deleted lines after last git commit
  call dein#add('ctrlpvim/ctrlp.vim')                          " File finder for Vim
  call dein#add('tpope/vim-commentary')                        " Quickly comment lines out
  call dein#add('w0rp/ale')                                    " Asynchronous linter for Vim
  call dein#add('mhinz/vim-startify')                          " Start screen
  call dein#add('ryanoasis/vim-devicons')                      " Use Nerd fonts for icons
  call dein#add('edkolev/tmuxline.vim')                        " Status line for tmux
  call dein#add('mileszs/ack.vim')                             " ack and ag in Vim
  call dein#add('jiangmiao/auto-pairs')                        " Auto-closing of brackets

  " Language support
  call dein#add('vim-scripts/c.vim')                           " Language support for C/C++
  call dein#add('python-mode/python-mode')                     " Language support for Python
  call dein#add('fatih/vim-go')                                " Language support for Go
  call dein#add('ternjs/tern_for_vim', {'do': 'npm install'})  " Language support for JavaScript
  call dein#add('zah/nim.vim')                                 " Language support for Nim

  " Syntax highlighting
  call dein#add('slim-template/vim-slim')                      " Slim syntax highlighting
  call dein#add('pangloss/vim-javascript')                     " Syntax highlighting for JavaScript
  call dein#add('mxw/vim-jsx')                                 " Syntax highlighting for JSX
  call dein#add('othree/html5.vim')                            " Syntax highlighting for HTML 5
  call dein#add('HerringtonDarkholme/yats.vim')                " Syntax highlighting for TypeScript
  call dein#add('nikvdp/ejs-syntax')                           " Syntax highlighting for EJS
  call dein#add('ElmCast/elm-vim')                             " Syntax highlighting for Elm
  call dein#add('posva/vim-vue')                               " Syntax highlighting for Vue

  " Color schemes
  call dein#add('rakr/vim-one')                                " One color scheme, ported from Atom
  call dein#add('mhartington/oceanic-next')                    " Oceanic Next color scheme
  call dein#add('arcticicestudio/nord-vim')                    " An arctic, north-bluish theme for Vim

  " Plugins no longer used
  " call dein#add('jelera/vim-javascript-syntax')
  " call dein#add('pangloss/vim-javascript')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=4                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=4                                            " insert mode tab and backspace use 2 spaces
set tabstop=4                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set nofoldenable                                             " disable folding

" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <leader>l :Align
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader><space> :call whitespace#strip_trailing()<CR>
nnoremap <leader>g :GitGutterToggle<CR>
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" in case you forgot to sudo
cnoremap w!! %!sudo tee > /dev/null %

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" fdoc is yaml
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set spell
" extra rails.vim help
autocmd User Rails silent! Rnavcommand decorator      app/decorators            -glob=**/* -suffix=_decorator.rb
autocmd User Rails silent! Rnavcommand observer       app/observers             -glob=**/* -suffix=_observer.rb
autocmd User Rails silent! Rnavcommand feature        features                  -glob=**/* -suffix=.feature
autocmd User Rails silent! Rnavcommand job            app/jobs                  -glob=**/* -suffix=_job.rb
autocmd User Rails silent! Rnavcommand mediator       app/mediators             -glob=**/* -suffix=_mediator.rb
autocmd User Rails silent! Rnavcommand stepdefinition features/step_definitions -glob=**/* -suffix=_steps.rb
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" fixes syntax highlighting in Vue files
autocmd FileType vue syntax sync fromstart

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Don't copy the contents of an overwritten selection.
vnoremap p "_dP

" Tern for JavaScript language tools
let g:deoplete#sources#ternjs#tern_bin = '/usr/local/bin/tern'
let g:deoplete#sources#ternjs#timeout = 1

" Use tern_for_vim
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" Enables syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1

" Enable all syntax highlighting options for Go
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1

if (has("termguicolors"))
  set termguicolors                                          " Ensures colors are displayed properly on iTerm 2 with solarized color scheme
endif

" Installed themes: solarized, one, oceanicnext, nord
colorscheme one                                              " Current color scheme
set background=dark                                          " background is set to dark mode

let g:airline_theme='one'                                    " Sets Airline theme
let g:airline_powerline_fonts = 1                            " Use Powerline fonts
let g:airline#extensions#whitespace#enabled = 0              " Disables whitespace detection
let g:airline_extensions = []                                " Disables all Airline extensions
let g:airline#extensions#tmuxline#enabled = 1                " Sets tmuxline theme to match Airline theme
" let g:airline#extensions#tabline#enabled = 1               " (disabled) Airline tab bar

" Sets up linters for ALE
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

