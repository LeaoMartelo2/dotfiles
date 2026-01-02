call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
" you probabbly can do this without a pluggin but turn down for what

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'kien/rainbow_parentheses.vim'

"Plug 'bfrg/vim-cpp-modern'



call plug#end()


let &t_SI = "\e[5 q"  " Insert mode: blinking bar
let &t_EI = "\e[1 q"  " Normal mode: blinking block
" turn down for what


set matchpairs+=(:),{:},[:],":",':'


" general settings
filetype on
syntax on
set clipboard=unnamedplus
set encoding=UTF-8

set relativenumber
set number

set mouse=a

set splitbelow splitright

set hlsearch
set incsearch
set ignorecase
map <esc> :noh<CR>

set shiftwidth=4
set softtabstop=4
set expandtab

set path+=**
set wildmenu

"colorscheme sorbet
colorscheme GruberDarker


"open small terminal with space + h 
set termwinsize=10x120
nnoremap <space>h :botright terminal<CR>




function! ClangFormatAndReload()
    if &modified
	write
    endif

    let l:fname = expand('%s:p')
    if empty(l:fname)
	echoerr "No File found / nothing to format"
	return
    endif

    silent execute '!clang-format -i ' . shellescape(l:fname)

    silent edit!
    redraw!
endfunction

command! Fmt call ClangFormatAndReload()




source ~/.vim/vim-plugins/buffer_cycle/buffer_cycle.vim



set nobackup
set nowritebackup
set updatetime=300
source ~/.vim/vim-plugins/plugin_config/coc_cfg.vim


source ~/.vim/vim-plugins/plugin_config/rbpt_colors.vim
