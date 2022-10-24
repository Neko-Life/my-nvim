set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua require('shasha')
lua require('coc-config')

" Themes ===========================================

" [CAUTION] copy the color scheme to nvim colors path
" cp ~/.local/share/nvim/plugged/tender.vim/autoload/lightline/colorscheme/tender.vim /usr/share/nvim/runtime/colors
" set lighline theme inside lightline config
let g:lightline = { 'colorscheme': 'tender' }

" Theme [tender.vim]
syntax enable
colorscheme tender

" Themes ===========================================
