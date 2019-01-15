"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_cache_dir = $XDG_CACHE_HOME . '/dein'
let s:dein_config_dir = $XDG_CONFIG_HOME . '/nvim'

" Required:
set rtp+=/Users/ryosuke/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  call dein#load_toml(s:dein_config_dir . '/dein.toml', {'laxy': 0})

  " call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Syntax highlighting
  call dein#add('slim-template/vim-slim')                      " Slim syntax highlighting
  call dein#add('pangloss/vim-javascript')                     " Syntax highlighting for JavaScript
  call dein#add('mxw/vim-jsx')                                 " Syntax highlighting for JSX
  call dein#add('othree/html5.vim')                            " Syntax highlighting for HTML5
  call dein#add('HerringtonDarkholme/yats.vim')                " Syntax highlighting for TypeScript
  call dein#add('nikvdp/ejs-syntax')                           " Syntax highlighting for EJS
  call dein#add('ElmCast/elm-vim')                             " Syntax highlighting for Elm
  call dein#add('posva/vim-vue')                               " Syntax highlighting for Vue
  call dein#add('vim-scripts/promela.vim')                     " Syntax highlighting for Promela

  " Color schemes
  " call dein#add('rakr/vim-one')                                " One color scheme, ported from Atom
  call dein#add('mhartington/oceanic-next')                    " Oceanic Next color scheme
  call dein#add('arcticicestudio/nord-vim')                    " An arctic, north-bluish theme for Vim

  " Airline themes
  call dein#add('vim-airline/vim-airline-themes')
  
  " Autocomplete for NeoVim
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Deoplete sources
  call dein#add('Shougo/neco-syntax')                          " Syntax source for Deoplete
  call dein#add('carlitux/deoplete-ternjs')                    " Autocomplete for JavaScript
  call dein#add('zchee/deoplete-jedi')                         " Autocomplete for Python
  call dein#add('zchee/deoplete-go', {'build': 'make'})        " Autocomplete for Go
  call dein#add('fszymanski/deoplete-emoji')                   " Autocomplete for emoji codes

  " Plugins no longer in use
  " call dein#add('othree/yajs.vim')                           " Syntax highlighting for JavaScript
  " call dein#add('othree/es.next.syntax.vim')                 " Support for future ESMAScript
  " call dein#add('jelera/vim-javascript-syntax')              " Another JavaScript syntax highlighter

  call dein#add('Shougo/deol.nvim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts-------------------------

set rtp+=/usr/local/opt/fzf

set autoindent
set autoread                                                 " reload files when changed on disk
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set hlsearch                                                 " highlight search results
set incsearch                                                " search starts from first character typed
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=2                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set nofoldenable                                             " disable folding

" Enable basic mouse behavior such as resizing buffers.
set mouse=a

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
let g:deoplete#enable_at_startup = 1                         " Enable Deoplete by default

" fdoc is yaml
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml

" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set spell

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

" Use tern_for_vi

" Enables syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1

" Enables syntax highlighting options for Go


if (has("termguicolors"))
  set termguicolors                                          " Ensures colors are displayed properly on iTerm
endif

" ALE settings
let g:ale_enabled = 0                                        " ALE is disabled until enabled manually

" Sets up linters for ALE
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'jsx': ['stylelint', 'eslint'],
\}
let g:ale_linter_aliases = {'jsx': 'css'}

if filereadable(expand("~/.nvimrc.local"))
  source ~/.nvimrc.local
endif
