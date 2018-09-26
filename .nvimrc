" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'mboughaba/i3config.vim'
call plug#end()
let g:lightline = {
  \ 'colorscheme': 'seoul256',
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }
set noshowmode
syntax on
colorscheme one
let g:one_allow_italics = 1
set background=dark
map <C-o> :NERDTreeToggle<CR>
