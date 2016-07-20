set nocompatible "Disable vi-compatability

set t_Co=256
syntax on
filetype plugin indent on "pathogen advised
"colorscheme codeschool
colorscheme facebook

" set guifont=Menlo\ for\ Powerline:h22
"
set guifont=Monaco:h13

"set guioptions-=r

"set guioptions-=L

set guioptions-=rL " disables scrollbar  
"set guifont=Menlo\ Regular:h10



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" NERDTree
let g:NERDTreeDirArrows=0

" Pathogen plugin manager
execute pathogen#infect()

set autoread											" automatically refresh any changed files
set linespace=9

set showmode											" always show what mode we're currently editing in

set nowrap                  			" don't wrap lines

set tabstop=4											" a tab is four spaces. fixes double indentation when copoying indented content. helps with snippets too

set shiftwidth=4									" number of spaces to use for auto indenting. seems to add double indent when pasting something with indents. 
set softtabstop=0									" when hitting <BS>, pretend like a tab is removed, even if spaces
" set smarttab				

set tags=tags

set noexpandtab

" set expandtab										" expand tabs by default (overloadable per file type later)

" set shiftwidth=2								" number of spaces to use for auto indenting

set shiftround										" use multiple of shiftwidth when indenting with '<' and '>'

set backspace=indent,eol,start		" allow backspacing over anything in insert mode

set autoindent              			" always set autoindent on

set copyindent              			" copy the previous indention on autoindenting

set number                  			" always show line numbers

set ignorecase              			" ignore case when searching

set smartcase               			" ignore case if search patter is all lowercase

set timeout timeoutlen=500 ttimeoutlen=100

set autowrite               			" save on buffer switch

set mouse=a												" enable mouse

set pastetoggle=<F3>        			" turn off auto-indent when pasting text

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file

let mapleader = ","

let g:mapleader = ","

" Fast saves

nmap <leader>w :w!<cr>

" Comment word
nmap <leader>cc <esc>hhvawgc
"Down is really the next line helps with line wraps

nnoremap j gj
nnoremap k gk
"Easy escaping to normal model

imap jj <esc>

" Auto change directory to match current file , cd

nnoremap ,cd :cd %:p:h<CR>:pwd<CR>



nmap <C-b> :NERDTreeToggle<cr>


" Load the current file buffer in Chrome

nmap ,gc :!open -a Google\ Chrome<cr>


" Show (partial) command in the status line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI CONFIG
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set showcmd

"easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>

" Create split below
nmap :sp :rightbelow sp<cr>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MOVEMENT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" move to beginning / end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
"nnoremap $ <nop>
"nnoremap ^ <nop>

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>

" nnoremap :bp :BufSurfBack<cr>

nmap :bn :BufSurfForward<cr>
" noremap :bn :BufSurfForward<cr>

" Switch to previous buffer
nmap <C-e> :e#<CR>

" Cycle between all open buffers
noremap <C-n> :bnext<CR>
noremap <C-p> :bprev<CR>

highlight Search cterm=underline


" Swap files out of the project root and into vim directory
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Run PHPUnit tests

" map <Leader>t :!phpunit %<cr>


" Easy motion stuff

"let g:EasyMotion_leader_key = '<leader>'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	POWERLINE 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Powerline (Fancy thingy at bottom stuff)

let g:Powerline_symbols = 'fancy'

set laststatus=2                    " Always show the statusline

set encoding=utf-8                  " Necessary to show Unicode glyphs

set noshowmode                      " Hide the default mode text (e.g. -- INSERT -- below the statusline)


" Remove search results

" command! H let @/=""

" Better way to remove search results, keeps search history intact

nmap <silent> ,/ :nohlsearch<CR>


"""""""""""""""""""""""""
"""""""""""""""""""""""""
" LARAVEL SHORTCUTS
"""""""""""""""""""""""""
"""""""""""""""""""""""""

abbrev gm !php artisan generate:model

abbrev gc !php artisan generate:controller

abbrev gmig !php artisan generate:migration

nmap <leader>lr :e app/routes.php<cr>

nmap <leader>lca :e app/config/app.php<cr>81Gf(%O

nmap <leader>lcd :e app/config/database.php<cr>

nmap <leader>lc :e composer.json<cr>



" Auto-remove trailing spaces

autocmd BufWritePre *.php :%s/\s\+$//e


" Edit todo list file for every project 

nmap ,todo :e todo.txt<cr>



" CtrlP Stuff
" nano
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|flv|mp4|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
nmap ; :CtrlPBuffer<CR>

" Familiar command for file/symbol browsing

" map <D-p> :CtrlP<cr>

" map <C-r> :CtrlPBufTag<cr>


" I don't want to pull up thse folder/files when calling CtrlP

set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
set wildignore+=*/node_modules/**

" SnipMate
" imap ss <esc>a<Plug>snipMateNextOrTrigger
" smap ss <Plug>snipMateNextOrTrigger

"""""""""""""""""""""""""
"""""""""""""""""""""""""
" OPEN EDIT FILES
"""""""""""""""""""""""""
"""""""""""""""""""""""""

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

"Create/edit file in the current directory
nmap :ed :edit %:p:h/


" emmet key remap to tab and still keep tab indent support

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" emmet trigger remap needs comma after
imap hh <C-y>
" Nano adds

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" SYNTASTIC
let g:syntastic_html_tidy_exec = 'tidy5'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



