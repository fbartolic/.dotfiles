"Plugins
call plug#begin('~/.vim/plugged')
Plug 'neovim/python-client'                                  "Python support
Plug 'lervag/vimtex'                                         "Latex plugin
Plug 'vim-airline/vim-airline'                               "Vim airline
Plug 'morhetz/gruvbox'                                       "Gruvbox plugin theme
Plug 'SirVer/ultisnips'
Plug 'Yggdroot/indentLine'                                   "Indent line
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe'
call plug#end()

let g:gruvbox_italic=1                                       "Enable italics in terminal
let g:gruvbox_contrast_dark='soft'                           "Soft contrast
colorscheme gruvbox
set bg=dark                                                  "Dark background
set termguicolors                                            "Better colors in terminal
set number                                                   "Line numbers
set relativenumber                                           "Relative line numbers
autocmd FileType help wincmd L                               "Split vertical to the right
set cursorline                                               "Highlight current line
filetype indent on                                           "Indent based on filetype
set showmatch                                                "Highlight matching brackets
set incsearch                                                "Search as characters are entered
set hlsearch                                                 "Highlight matches
let mapleader=","
set hidden
tnoremap <Esc> <C-\><C-n>                                    "Exit :terminal mode easily
"<Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Vimtex settings
let g:vimtex_latexmk_progname='nvr'
let g:vimtex_view_method='zathura'
let g:vimtex_latexmk_build_dir='./build'
"Tab settings
set tabstop=4
set softtabstop=4
set expandtab
"Move vertically by visual line
nnoremap j gj
nnoremap k gk
"Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Enable code folding
set foldmethod=indent
set foldlevel=99
"Enable folding with the spacebar
nnoremap <space> za
"Faster scrolling
set lazyredraw
set clipboard=unnamedplus
"Remove all trailing whitespace by pressing F5
fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun
