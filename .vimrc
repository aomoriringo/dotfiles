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
"neobundle
""""""""""""""""""""""
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'modsound/gips-vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim', {'depends': 'mattn/webapi-vim'}
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'sjl/badwolf'
NeoBundle 'rsmenon/vim-mathematica'
NeoBundle 'vim-jp/vital.vim'

call neobundle#end()

""""""""""""""""""""""
" neobundle - textobj
""""""""""""""""""""""
" 関数の引数
" a, i
"NeoBundle 'sgur/vim-textobj-parameter'

" インデント
" al, il
"NeoBundle 'kana/vim-textobj-indent'


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

"""""""""""""""""""""
" vital.vim
"""""""""""""""""""""
set runtimepath+=~/.vim/bundle/vital.vim

