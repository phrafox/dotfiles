" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'itchyny/lightline.vim'
	Plug 'joshdick/onedark.vim'
	Plug 'NovaDev94/lightline-onedark'
	Plug 'rakr/vim-one'
	Plug 'tpope/vim-eunuch'
	Plug 'tpope/vim-surround'
	Plug 'Lokaltog/neoranger'
	Plug 'mboughaba/i3config.vim'
call plug#end()

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }

"onedark.vim override: Set a custom background color in the terminal
if (has("autocmd") && !has("gui_running"))
augroup colors
    autocmd!
    let s:background = { "gui": "#000000", "cterm": "16", "cterm16": "0" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "bg": s:background }) "No `fg` setting
  augroup END
endif

set noshowmode
syntax on

"Colorscheme
let g:onedark_termcolors=256
colorscheme onedark
set background=dark

"Custom mappings
map <C-o> :Ranger<CR>
