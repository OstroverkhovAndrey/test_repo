
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
"colorschemes
"Plug 'morhetz/gruvbox'

call plug#end()

set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
syntax on
"colorscheme gruvbox
"set background=dark

set hlsearch
set incsearch

"mappings

map <C-n> :NERDTreeToggle<CR>

if exists('+colorcolumn')
    highlight ColorColumn ctermbg=2 guibg=#8B00FF
    highlight CursorLine ctermbg=235 guibg=#8B00FF
    highlight CursorColumn ctermbg=235 guibg=#8B00FF
    let &colorcolumn=join(range(81,999),",")
else
    autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
end
