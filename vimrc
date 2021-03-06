set nocompatible
silent! py3 pass

" Enable vim plugins (https://github.com/junegunn/vim-plug)
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'davidhalter/jedi-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
call plug#end()

" Set misc settings
set autoindent
set backspace=indent,eol,start
set clipboard=unnamed
set completeopt-=preview
set confirm
set copyindent
set encoding=utf-8
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
set splitbelow
set splitright
set t_vb=
set tabstop=4
set visualbell
set wildmenu

" Change color scheme
syntax enable
set background=dark
colorscheme solarized

" Add shortcut key maapings
imap <C-R> <ESC>:w<CR>:GoRun<CR>
nnoremap <C-A> :NERDTreeToggle<CR>
nnoremap <C-L> :nohl<CR><C-L>
