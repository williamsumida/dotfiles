call plug#begin()
    Plug 'dracula/vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'morhetz/gruvbox'
    Plug 'deoplete-plugins/deoplete-jedi'
    Plug 'chrisbra/Colorizer'
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
call plug#end()

let g:colorizer_auto_color = 1
let g:deoplete#enable_at_startup = 1

if &term =~ '256color'
    set t_ut=
endif

"colorscheme dracula 
colorscheme gruvbox
set background=dark

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemed = ':t'
"let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'


set hidden "carregar outros arquivos sem pedir para salvar o anterior
set number "mostra o numero das linhas
set relativenumber "mostra o numero das linhas relativamente
set mouse=a " habilita o mouse

"configura o tab para 4 espacos
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set showmatch "show matching brackets
set nojoinspaces "prevents inserting two spaces after punctuation on a join (J)

set splitbelow "split pra baixo da tela atual
set splitright "split pra direita da tela atual

set t_Co=256

"let g:dracula_colorterm = 1
"set termguicolors
"colorscheme dracula
let g:dracula_italic = 0

highlight Normal ctermbg=None

let mapleader="\<space>"

:imap jj <Esc> 
