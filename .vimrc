set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
" NOTE: nerdtree-git causes a lot of leading whitespace when
" used with vim-devicons.
" Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'liuchengxu/space-vim-dark'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" === My own modifications ===
syntax enable
set encoding=utf8
set t_Co=256
set number " line number
" NerdTREE
let NERDTreeShowHidden=1
autocmd vimenter * NERDTree
map <F8> :NERDTreeToggle<CR>
" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = "base16_seti"
" Theme
colorscheme space-vim-dark
set termguicolors
hi Normal     	ctermbg=NONE 	guibg=NONE
hi LineNr     	ctermbg=NONE 	guibg=NONE
hi SignColumn 	ctermbg=NONE 	guibg=NONE
hi LineNr 	ctermbg=NONE 	guibg=NONE
hi Comment 	guifg=#5C6370 	ctermfg=59
