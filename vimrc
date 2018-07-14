set nocompatible

" Enable vim plugins (https://github.com/junegunn/vim-plug)
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete-gocode.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif
call plug#end()

" Enable golang autocompletion
call asyncomplete#register_source(asyncomplete#sources#gocode#get_source_options({
    \ 'name': 'gocode',
    \ 'whitelist': ['go'],
    \ 'completor': function('asyncomplete#sources#gocode#completor'),
    \ }))
set completeopt-=preview

" Set misc settings
set autoindent
set backspace=indent,eol,start
set clipboard=unnamed
set confirm
set copyindent
set hidden
set hlsearch
set ignorecase
set laststatus=2
set noexpandtab
set nostartofline
set notimeout ttimeout ttimeoutlen=200
set number
set pastetoggle=<F11>
set preserveindent
set ruler
set shiftwidth=4
set showcmd
set smartcase
set softtabstop=0
set t_vb=
set tabstop=4
set visualbell
set wildmenu

" Change color scheme
syntax enable
set background=dark
colorscheme solarized

" Change key maapings
nnoremap <C-A> :NERDTreeToggle<CR>
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <C-R> :GoRun<CR>
imap <C-R> <ESC>:w<CR>:GoRun<CR>

" Enable auto commands for python
autocmd FileType python nnoremap <buffer> <C-R> :exec '!clear; python3' shellescape(@%, 1)<CR>
