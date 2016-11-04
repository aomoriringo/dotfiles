"""""""""""""""""""""
" general
"""""""""""""""""""""
syntax on
set number
set tabstop=2
set laststatus=2
set shiftwidth=2
set t_Co=256
set expandtab
set noswapfile
set encoding=utf8
set fileencoding=utf8
set infercase            " 文字がない場所へのカーソル移動

set list                 " 不可視文字の表示
set listchars=tab:^\ ,trail:~
set smartindent
set backspace=indent,start,eol
set mouse=a

"""""""""""""""""""""""""
" Highlight end spaces
" 書いてるけどこの設定効いてない感あります
"""""""""""""""""""""""""

augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter * match TrailingSpaces /\s\+$/
augroup END

"""""""""""""""""""""
" remap
"""""""""""""""""""""
noremap <CR> O<ESC>
inoremap <Right> <nop>
inoremap <Left> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

""""""""""""""""""""""
" dein
""""""""""""""""""""""
" $ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" $ sh ./installer.sh ~/.vim/bundle/dein.vim

if &compatible
    set nocompatible
endif

set runtimepath+=~/.vim/bundle/dein.vim/repos/github.com/Shougo/dein.vim

call dein#begin('~/.vim/bundle/dein.vim/')
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimproc')
call dein#add('modsound/gips-vim')
call dein#add('itchyny/lightline.vim')
call dein#add('mattn/webapi-vim')
call dein#add('mattn/gist-vim')
call dein#add('ujihisa/unite-colorscheme')
call dein#add('sjl/badwolf')
call dein#add('rsmenon/vim-mathematica')
call dein#add('vim-jp/vital.vim')
call dein#end()

filetype plugin indent on
syntax enable


"""""""""""""""""""""
" colorscheme
"""""""""""""""""""""
colorscheme badwolf

"""""""""""""""""""""
" vim-mathematica
"""""""""""""""""""""
let g:mma_candy=1
let g:mma_hightlight_option = "badwolf"

"""""""""""""""""""""
" vital.vim
"""""""""""""""""""""
set runtimepath+=~/.vim/bundle/vital.vim

"""""""""""""""""""""
" golang
"""""""""""""""""""""
if expand("%:t") =~ ".*\.go"
  set noexpandtab
  set tabstop=4
  set shiftwidth=4
endif



