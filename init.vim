set directory=$HOME/.vim/swapfiles//
syntax on
set autoindent
set hlsearch
set ignorecase
set incsearch
set smartcase
set number
set relativenumber
set autochdir
set splitright
filetype plugin indent on

call plug#begin()
Plug 'github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'github.com/preservim/nerdtree' " NerdTree
Plug 'github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'github.com/vim-airline/vim-airline' " Status bar
Plug 'github.com/ap/vim-css-color' " CSS Color Preview
Plug 'github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'sirver/ultisnips'
Plug 'lervag/vimtex'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'github.com/xolox/vim-misc'
Plug 'github.com/xolox/vim-shell'
Plug 'kdheepak/lazygit.nvim'
Plug 'ggandor/leap.nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jesseleite/vim-noh'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'rebelot/kanagawa.nvim'

call plug#end()
set encoding=utf-8

:set completeopt-=preview " For No Previews
" :colorscheme jellybeans
nnoremap <C-y> :NERDTreeToggle<CR>
nnoremap <C-k> :TagbarToggle fj<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

silent! colorscheme kanagawa-wave

"Default keybindings for leap
lua require('leap').add_default_mappings()

"vimtex config
"let g:vimtex_compiler_method = 'pdflatex'
" let maplocalleader = ","
let g:vimtex_view_general_viewer = 'zathura'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
"Docstring
let g:doge_mapping = '<M-d>' 
"Commands
command Go  :w|:!clear;python3 %
" command Goi :w|:vsp|term python3 -i "%"
" Rename commands
" FileManager
cabbrev o Files 
" Open buffers in vertical tab
cabbrev sb vert sb
" self explanatory
cabbrev git LazyGit 
" air-line
let g:airline_powerline_fonts = 1
" ultisnips stuff
let g:UltiSnipsExpandTrigger = '<CR>'
let g:UltiSnipsJumpForwardTrigger = '<CR>'
let g:UltiSnipsJumpBackwardTrigger = '<M>'
" fzf
let g:fzf_action = { 'enter': 'tab split' }
 let g:fzf_colors =
 \ { 'fg':      ['fg', 'Normal'],
   \ 'bg':      ['bg', 'Normal'],
   \ 'hl':      ['fg', 'Comment'],
   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
   \ 'hl+':     ['fg', 'Statement'],
   \ 'info':    ['fg', 'PreProc'],
   \ 'border':  ['fg', 'Ignore'],
   \ 'prompt':  ['fg', 'Conditional'],
   \ 'pointer': ['fg', 'Exception'],
   \ 'marker':  ['fg', 'Keyword'],
   \ 'spinner': ['fg', 'Label'],
   \ 'header':  ['fg', 'Comment'] }

