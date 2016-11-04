""""""Plugins"""""""
call plug#begin('~/.vim/plugged')
Plug 'neovim/python-client'                                  "Python support
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'lervag/vimtex'                                         "Latex plugin
Plug 'vim-airline/vim-airline'                               "Vim airline
Plug 'morhetz/gruvbox'                                       "Gruvbox plugin theme
Plug 'SirVer/ultisnips'
Plug 'Yggdroot/indentLine'                                   "Indent line
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe'
Plug 'tmhedberg/SimpylFold'
Plug 'nvie/vim-flake8'
call plug#end()

""""""Plugin specific settings""""""
let NERDTreeIgnore=['\.pyc$', '\~$']                         "Ignore files in NERDTree
let g:ycm_autoclose_preview_window_after_completion=1
let g:SimpylFold_docstring_preview=1                         "Don't fold Python doctrings
let g:gruvbox_italic=1                                       "Enable italics in terminal
let g:gruvbox_contrast_dark='soft'                           "Soft contrast
let g:vimtex_latexmk_progname='nvr'
let g:vimtex_view_method='zathura'
let g:vimtex_latexmk_build_dir='./build'
let g:flake8_show_in_gutter=1
let g:flake8_quickfix_location='belowright'

""""""Syntax, colors and UI""""""
colorscheme gruvbox
set bg=dark                                                  "Dark background
set termguicolors                                            "Better colors in terminal
set number                                                   "Line numbers
set relativenumber                                           "Relative line numbers

""""""Searching""""""
set showmatch                                                "Highlight matching brackets
set incsearch                                                "Search as characters are entered
set hlsearch                                                 "Highlight matches
"<Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

""""""Layout, buffers, splits...""""""
autocmd FileType help wincmd L                               "Split vertical to the right
tnoremap <Esc> <C-\><C-n>                                    "Exit :terminal mode easily
set hidden
"Move vertically by visual line
nnoremap j gj
nnoremap k gk
"Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""Tabs, indents and folding""""""
set tabstop=4
set softtabstop=4
set expandtab
filetype indent on                                           "Indent based on filetype
set foldmethod=indent
set foldlevel=99
"Enable folding with the spacebar
nnoremap <space> za

""""""Custom functions""""""
"Remove trailing whitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun

""""""Language specific settings""""""
" Python, PEP-008
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set textwidth=139
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set autoindent
au         BufNewFile *.py,*.pyw set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw let b:comment_leader = '#'
au BufRead,BufNewFile *.py,*.pyw let &colorcolumn=join(range(81,999),",")

" C
au BufRead,BufNewFile *.c,*.h set expandtab
au BufRead,BufNewFile *.c,*.h set tabstop=4
au BufRead,BufNewFile *.c,*.h set shiftwidth=4
au BufRead,BufNewFile *.c,*.h set autoindent
au         BufNewFile *.c,*.h set fileformat=unix
au BufRead,BufNewFile *.c,*.h let b:comment_leader = '/* '

""""""Performance optimization""""""
set lazyredraw
set nocursorcolumn
set synmaxcol=300
set re=1
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

""""""Misc""""""
set clipboard=unnamedplus
let mapleader=","
