" Things still needed:
" 1) name/variable refactoring
" 2) comment blocks in python

" ------------------------------------------------------------------ "
" ----------------------------- Vundle ----------------------------- "
" ------------------------------------------------------------------ "
set nocompatible              " be iMproved, required
filetype off                  " required

" Tmux color settings
set background=dark
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Check Vundle github for examples of different formats supported.
" For Plugins from GitHub use: Plugin 'user/repo'
" Then run in vim :PluginInstall
" Keep Plugin commands between vundle#begin/end.

" ----------------------- "
" ---- YouCompleteMe ---- "
" ----------------------- "
Plugin 'Valloric/YouCompleteMe' " Autocomplete
let g:ycm_key_list_stop_completion = [ '<C-y>', '<Enter>' ] " press enter to select completion
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" ------------------- "
" ---- Syntastic ---- "
" ------------------- "
Plugin 'vim-syntastic/syntastic' " Sytax highlighting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ------------------ "
" ---- NERDTree ---- "
" ------------------ "
Plugin 'scrooloose/nerdtree' " File tree
let NERDTreeShowHidden=1 " Show hidden files by default
" autocmd vimenter * NERDTree

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ------------------------------------------------------------------ "
" ------------------------ Python Settings  ------------------------ "
" ------------------------------------------------------------------ "
augroup python_files
    autocmd!
   
    autocmd FileType python setlocal noexpandtab
    autocmd FileType python set tabstop=4
    autocmd FileType python set shiftwidth=4
    autocmd Syntax python :syn keyword Keyword self
    autocmd Syntax python :syn keyword Keyword True
    autocmd Syntax python :syn keyword Keyword False

    autocmd Syntax python match Function /\k\+\%(\s*(\)\@=/
    highlight Function guifg=#990000 gui=bold ctermfg=202

augroup END


" ------------------------------------------------------------------ "
" ------------------------- Other Settings ------------------------- "
" ------------------------------------------------------------------ "

" Syntax highlighting
syntax on
colorscheme blackboard
" YCM pop-up colors
highlight Pmenu ctermfg=15 ctermbg=202 guifg=#ffffff guibg=#000087

" Align indents
filetype indent plugin on

" Display line numbers
set number

