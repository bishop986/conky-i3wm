set nu
set incsearch
set hlsearch
set nocompatible
set syntax=on
set cursorline

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" a tag list plugin
Plugin 'majutsushi/tagbar'
nmap <F3> :TagbarToggle<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

" tabline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
nmap <C-N> :bnext<CR>
nmap <C-P> :bprevious<CR>

Plugin 'scrooloose/nerdtree'
nmap <F2> :NERDTreeToggle<CR>

packadd! onedark.vim
colorscheme onedark

Plugin 'richq/vim-cmake-completion'

Plugin 'ycm-core/YouCompleteMe'
let mapleader=","
nmap <F4> :YcmCompleter FixIt<CR>
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
let g:ycm_global_ycm_extra_conf='~/.vim/global_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_seed_identifiers_with_syntax=1

Plugin 'junegunn/fzf.vim'

call vundle#end()

filetype plugin indent on

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
