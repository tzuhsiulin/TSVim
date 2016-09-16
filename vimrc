set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Bundle 'gmarik/Vundle.vim'
Bundle 'L9'
Bundle 'kien/ctrlp.vim'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdcommenter'
Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'majutsushi/tagbar.git'
Bundle 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Bundle 'taglist.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/syntastic'
Plugin 'MattesGroeger/vim-bookmarks'

" autocmd BufWritePre * :%s/\s\+$//e

" General
set hlsearch      
set encoding=utf-8
set showtabline=2
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " number of spaces to use for
set backspace=indent,eol,start 		" allow backspacing over everything in insert mode
set copyindent                    " copy the previous indentation on
set foldmethod=indent
set title                         " change the terminal's title
set ttyfast
set undolevels=1000               " use many muchos levels of undo
set history=1000                  " remember more commands and search history
set nopaste
set incsearch
set ignorecase                    " ignore case when searching
" set hidden

" Other
set noerrorbells                  " don't beep
set nowrap                        " don't wrap lines
set number                        " always show line numbers
set ruler
set shiftround                    " use multiple of shiftwidth when indenting with '<' and '>'
set showcmd
set showmatch                     " set show matching parenthesis
set smartcase                     " ignore case if search pattern is all lowercase,
set smarttab                      " insert tabs on the
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set visualbell           " don't beep
set wildignore=*.swp,*.bak,*.pyc,*.class
" set mouse=a
" set noai
" set expandtab
" set laststatus=2

" Folding
set foldmethod=syntax
set foldlevel=99                  " folding

" Indent 
set autoindent
set smartindent

" Cursor
set cursorline
set cursorcolumn
autocmd InsertEnter * highlight CursorColumn ctermfg=White ctermbg=Gray cterm=bold guifg=white guibg=yellow gui=bold
autocmd InsertLeave * highlight CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

" copy to clipboard
set clipboard=unnamed

" Heightlight the result of search 
set hls

" Solarized theme
syntax on
syntax enable
let g:solarized_termtrans = 1
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

" ESLINT
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=5
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

" NERDTree
let NERDTreeWinPos="right"

" Other
let g:airline#extensions#tabline#enabled = 1
let g:jedi#popup_select_first = 0
let g:jedi#auto_vim_configuration = 1
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let mapleader=","
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'
" let NERDTreeShowBookmarks=1
let g:indentLine_color_term = 239

autocmd BufWinEnter * NERDTreeMirror
" autocmd VimEnter * NERDTree
" " autocmd FileType  python setlocal textwidth=79

inoremap <C-C> <Esc>
nnoremap <F6> :SyntasticCheck<CR>
nnoremap <F5> :SyntasticToggleMode<CR>
nnoremap <C-h>  :tabfirst<CR>
nnoremap <C-k>  :tabnext<CR>
nnoremap <C-j>  :tabprev<CR>
nnoremap <C-l>  :tablast<CR>
nnoremap <C-t>  :cw<CR>
map <C-o> :NERDTreeToggle<CR>
map <Leader>n <plug>NERDTreeTabsToggle<CR>
map <C-n> :nohlsearch<CR>
map <f7> :Tlist<CR>
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
inoremap <leader>t <esc>:cc<cr>
inoremap <leader>w <esc>:w<cr>a
inoremap <leader>q <esc>:q<cr>
inoremap <leader>o <esc>o<cr>i
nnoremap <silent> <leader>b :TagbarToggle<CR>
nnoremap <leader>. :CtrlPTag<cr>
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
