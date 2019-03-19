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
tnoremap <Esc> <C-w><S-n>

"""""""""""""""""""""
" default
" nerdtree + terminal
"""""""""""""""""""""
function! s:open_term()
  call feedkeys(":NERDTree\<CR>\<C-w>l:rightbelow terminal ++rows=4\<CR>\<C-w>h")
endfunction

if !argc()
  autocmd vimenter * call s:open_term()
endif

""""""""""""""""""""""
" dein
""""""""""""""""""""""
" $ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
" $ sh ./installer.sh ~/.vim/bundle/dein.vim

if &compatible
    set nocompatible
endif

set runtimepath+=~/.vim/bundle/dein.vim/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundle/dein.vim')
    call dein#begin('~/.vim/bundle/dein.vim')

    " Let dein manage dein
    " Required:
    call dein#add('~/.vim/bundle/dein.vim/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here:
    " call dein#add('Shougo/neosnippet.vim')
    " call dein#add('Shougo/neosnippet-snippets')
    " You can specify revision/branch/tag.
    " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

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
    call dein#add('PProvost/vim-ps1')
    call dein#add('fatih/vim-go')
    call dein#add('scrooloose/nerdtree')
    call dein#add('rust-lang/rust.vim')
    call dein#add('racer-rust/vim-racer')

    " Required:
    call dein#end()
    call dein#save_state()
endif

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

"""""""""""""""""""""
" rust
"""""""""""""""""""""
if expand("%:t") =~ ".*\.rs"
  set tabstop=4
  set shiftwidth=4
endif

