call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"colorschemes
Plug 'morhetz/gruvbox'

call plug#end()

syntax on
colorscheme gruvbox 
set background=dark
set number
set expandtab
set tabstop=2
set hlsearch
set incsearch

"mappings

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymonitor-prefix)

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>


function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if(match(a:key,'[jk]'))
      wincmd v
    else
     wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction
