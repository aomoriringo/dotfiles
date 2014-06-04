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
set conceallevel=2

set list                 " 不可視文字の表示
set listchars=tab:^\ ,trail:~
set smartindent


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
inoremap <Right> <nop>
inoremap <Left> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

""""""""""""""""""""""
"neobundle
""""""""""""""""""""""
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'modsound/gips-vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'sjl/badwolf'
NeoBundle 'rsmenon/vim-mathematica'

filetype plugin indent on
NeoBundleCheck

"""""""""""""""""""""
" colorscheme
"""""""""""""""""""""
colorscheme badwolf

"""""""""""""""""""""
" vim-mathematica
"""""""""""""""""""""
let g:mma_candy=1
let g:mma_hightlight_option = "badwolf"
