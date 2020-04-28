let g:python_host_prog = '/usr/local/bin/python2.7'
let g:python2_host_prog = '/usr/local/bin/python2.7'
let g:python3_host_prog = '/usr/local/bin/python3.7'

" Behavior
set nobackup
set noswapfile
set nowrap
set number
set nostartofline
set clipboard=unnamedplus
set backspace=2
set mouse=a
set expandtab
set ignorecase
set autoindent
set tabstop=2
set smartindent
set smarttab
set shiftwidth=2
set encoding=utf-8 nobomb
set fileencoding=utf-8       " Use UTF-8 without BOM
set colorcolumn=120          " bad and extrabad line sizes
set scrolloff=8              " Start scrolling when we're 8 lines away from margins
set list                     " show invisibles
set lcs=eol:·                " Use the same symbols as TextMate for tabstops and EOLs
set cursorline
set showtabline=0
set splitbelow
set splitright
set wildignore+=package-lock.json,yarn.lock
set path+=src/**,packages/**/src/** " file search path

so $DOTFILES/nvim/utils/ripgrep.vim
so $DOTFILES/nvim/utils/return_to_last_position.vim
so $DOTFILES/nvim/utils/show_documentation.vim
so $DOTFILES/nvim/utils/notes.vim

au InsertEnter * set nocursorline
au InsertLeave * set cursorline

" Make :grep use ripgrep
command! -nargs=1 Ngrep grep "<args>" -g "*.md" $NOTES_DIR

set updatetime=750

so $DOTFILES/nvim/plugins.vim

let g:airline_theme = 'trashpolka'
