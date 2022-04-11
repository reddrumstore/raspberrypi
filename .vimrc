"vim
set nocompatible              " be iMproved, required
filetype off                  " required

"let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
"if empty(glob(data_dir . '/autoload/plug.vim'))
"  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif
"
" vundle plugin manager
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

call plug#begin('~/.vim/')
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
"Plugin 'ukyouz/onedark.vim'
Plug 'bluz71/vim-moonfly-colors' " Plug 'vim-moonfly-colors'
Plug 'bluz71/vim-moonfly-statusline'

call plug#end()

"call vundle#end()            " required
"filetype plugin indent on    " required
"  END VUNDLE

"let g:airline_theme='base16_tomorrow_night_eighties'

"let g:airline_powerline_fonts = 1

"colorscheme moonfly

if !has('gui_running')
  "set t_Co=256
endif

":let g:lightline = { 'colorscheme': 'moonfly' }
set gfn='Source\ Code\ Pro' " \ for\ Powerline'

syntax enable

set ruler

set hlsearch

" show line numbers
"set number

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" add a column to the left (margin)
set foldcolumn=1

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Ignore case of searches
set ignorecase
  "
  "
" 1 tab == 2 spaces
set expandtab
set shiftwidth=2
set tabstop=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Always show the status line
set laststatus=2
"set statusline=

" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

"  KEY MAPPING
nnoremap <C-i> i_<Esc>r

"""""""""""""""""""""""  FUNCTIONS

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        "return 'PASTE MODE  '
    endif
    return ''
endfunction

""""""""""""""""""""""  STATUSLINE 7777
"let g:lightline = {
"let g:lightline = { 'colorscheme': 'material' }
"      \ 'colorscheme': 'one',
"      \ }


let g:currentmode={
       \ 'n'  : 'NORMAL ',
       \ 'v'  : 'VISUAL ',
       \ 'V'  : 'V·Line ',
       \ "\<C-V>" : 'V·Block ',
       \ 'i'  : 'INSERT ',
       \ 'R'  : 'R ',
       \ 'Rv' : 'V·Replace ',
       \ 'c'  : 'Command ',
       \}
"set statusline+=%F       "  tail of filename
"set statusline+=%y      "  filetype
"set statusline +=%2*0x%04B\ %*          "character under cursor
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "  file encoding
"set statusline+=%h      "  help file flag
"set statusline+=TYPE=%Y
"set statusline+=ASCII=%03.3b
"set statusline+=HEX=%02.2B
"set statusline+=zzzz
"set statusline+=APOS=%04l,%04v%p%%
"set statusline+=ALEN=%L

"set statusline+=%=      "  left/right separator  --- split
"set statusline+=%{StatuslineCurrentHighlight()}\ \ "  current highlight
"set statusline+=%c,     "  cursor column
"set statusline+=%2p%%   "  cursor position
"set statusline+=%l/%L   "  cursor line/total lines
"set statusline+=\ %P    "  percent through file
"set statusline=+%03.b   "  char code
"set statusline+=%2*0x%04B\ %*          "character under cursor
"set statusline+=%#warningmsg#   " modified flag
"set statusline+=%m
"set statusline+=%*

" display tab as arrow things and trailing spaces as floating dots
"set list
"set listchars=tab:▷⋅,trail:⋅,nbsp:

set history=1000     "  store lots of :cmdline history
set showcmd          "  show incomplete cmds down the bottom

" 8888
" deus
"  'material',  " and 16color and moonfly
 let g:lightline = {
       \ 'colorscheme': 'material',
       \ 'active': {
       \   'right': [ [ 'lineinfo' ],
       \              [ 'percent' ],
       \              [ 'fileformat', 'fileencoding', 'filetype', "charvaluedec",'charvaluehex' ] ]
       \ },
       \ 'component': {
       \   '[charvaluedec': 'dec 0x%b]',
       \   '[charvaluehex': 'hex 0x%B]'
       \ },
       \ }
