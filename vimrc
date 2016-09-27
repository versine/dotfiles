set nocompatible

call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'wincent/command-t', {
      \   'do': 'cd ruby/command-t && ruby extconf.rb && make'
      \ }

Plug 'fatih/vim-go'

Plug 'nsf/gocode'

Plug 'altercation/vim-colors-solarized'

call plug#end()

syntax on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4

let g:CommandTTraverseSCM="pwd"

let mapleader = ","
nmap <leader>t <Plug>(NERDTreeToggle)
nmap <leader>f <Plug>(CommandT)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

if has('gui_running')
    set background=light
else
    set background=dark
endif

colorscheme solarized
