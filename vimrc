set nocompatible

" Vim Plug

runtime macros/matchit.vim

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'fatih/vim-go'
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'vim-syntastic/syntastic'
" Plug 'Shougo/neocomplete.vim'

Plug 'valloric/YouCompleteMe'
Plug 'elixir-lang/vim-elixir'
Plug 'flazz/vim-colorschemes'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

call plug#end()

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" autoload .ycm_extra_conf.py
let g:ycm_confirm_extra_conf = 0

" airline
let g:airline#extensions#tabline#enabled = 1

" No scrollbars
set guioptions-=r
set guioptions-=L 

" General Config
syntax on
set autoindent
set expandtab
set smartindent
set tabstop=4
set shiftwidth=2

set scrolloff=15

set guifont=Go\ Mono\ for\ Powerline

let mapleader=","

colorscheme darkblue2
set background=dark

" set t_Co=16

nnoremap <leader>q :q<CR>
nnoremap <leader>id gg=G``

nnoremap <leader>s :VimShell<cr>

" Go
au FileType go nmap <leader>sd <Plug>(go-doc)
au FileType go nmap <leader>e <Plug>(go-rename) 
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>ts <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

let g:go_fmt_command = "goimports"

" FZF
nnoremap <leader>f :FZF<return>

nnoremap <leader>m :make<return>

nnoremap <leader>r :!./a.out<return>

" Syntastic
let g:syntastic_cpp_compiler = 'gcc7-dev'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++ -Wall -Wextra -lm'

" NerdTree
map <leader>t :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "*",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" Auto-reload vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
