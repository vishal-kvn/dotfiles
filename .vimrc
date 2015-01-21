set tabstop=2
set shiftwidth=2

set expandtab
set hls
syntax on

" https://github.com/tpope/vim-pathogen
" https://github.com/scrooloose/nerdtree
" https://github.com/jistr/vim-nerdtree-tabs
" http://www.vim.org/scripts/script.php?script_id=2555

execute pathogen#infect()
filetype plugin indent on

autocmd vimenter * NERDTree
autocmd BufEnter * NERDTreeTabsOpen

:map <C-t> :NERDTreeToggle <Enter>
:map <M-t> :tabnew
:colorscheme jellybeans
set nu

" Status Line
set statusline=%f\ %y%r%m%=col\ %c\ line\ %1*%l%*/%L

" plugin for fuzzy find
" plugin for gitblame
