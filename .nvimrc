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
Plug 'alvan/vim-closetag'
Plug 'ervandew/supertab'
Plug 'Chiel92/vim-autoformat'
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

"Tab as 3 Spaces
set tabstop=3


"Completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
"Custom mappings
"Complete on C-O
inoremap <C-X> <C-X><C-O>
"terminal to CTRL+N; manual i
map <C-N> :vsplit <Bar> :term <CR>
tnoremap <ESC><ESC> <C-\><C-N>
"Pane nav
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Format
nnoremap <C-Q> :Autoformat <Bar> :set tabstop=2 <CR>
"Pane locations
set splitbelow
set splitright
"Ranger
map <C-o> :Ranger<CR>
