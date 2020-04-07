filetype off
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline-themes'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-surround'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-bufword'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'tell-k/vim-autopep8'
Plug 'scrooloose/nerdcommenter'
call plug#end()
filetype plugin indent on 
set nocompatible
set number 
set guioptions-=r
set guioptions-=L 
set guioptions-=b 
set showtabline=0 
set guifont=Monaco:h18 
syntax on
colorschem gruvbox
set nowrap 
set fileformat=unix 
set cindent
set tabstop=4 
set shiftwidth=4 
set showmatch 
set scrolloff=5 
set laststatus=2 
set fenc=utf-8 
set backspace=2 
set mouse=a 
set selection=exclusive 
set background=dark
let mapleader=" "
set selectmode=mouse,key 
set matchtime=5 
set ignorecase 
set incsearch 
set hlsearch 
set noexpandtab 
"set whichwrap+=<,>,h,l 
set autoread 
set cursorline 
set cursorcolumn 
set t_Co=256
map <leader>l <C-w>l
map <leader>k <C-w>k
map <leader>h <C-w>h
map <leader>j <C-w>j
nnoremap <S-Tab> <<
nnoremap <Tab> >>
vnoremap <S-Tab> <
vnoremap <Tab> >
 " airline
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
map <S-j> 5j
map <S-k> 5k
nnoremap <S-s> :w<CR>
nnoremap <S-q> :q<CR>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-a> <Home>
inoremap <C-e> <End>
nnoremap <leader>p :set paste<CR>
nnoremap <leader>np :set nopaste<CR>
map tt : NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>": "\<CR>")
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
let ncm2#popup_delay = 5
let g:ncm2#matcher = 'substrfuzzy'
let g:ncm2#match_highlight = 'sans-serif'
hi Normal  ctermfg=252 ctermbg=none
" ===
" === coc
" ===
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap tt :CocCommand explorer<CR>
" coc-translator
nmap ts <Plug>(coc-translator-p)"翻译

