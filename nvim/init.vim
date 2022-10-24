set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua require('shasha')
lua require('coc-config')

" Themes ===========================================

" BEGIN lightline.vim config
" [CAUTION] copy the color scheme to nvim colors path
" cp ~/.local/share/nvim/plugged/tender.vim/autoload/lightline/colorscheme/tender.vim /usr/share/nvim/runtime/colors
" set lighline theme inside lightline config
let g:lightline = { 'colorscheme': 'tender' }
" END lightline.vim config

" BEGIN tender.vim config
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme tender
" END tender.vim config

" Themes ===========================================
