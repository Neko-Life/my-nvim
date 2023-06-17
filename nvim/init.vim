set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua require('shasha')
" lua require('coc-config')

" Themes ===========================================

" BEGIN lightline.vim config
" set lighline theme inside lightline config
" let g:lightline = { 'colorscheme': 'tender' }
" END lightline.vim config

" BEGIN tender.vim config
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme habamax
" END tender.vim config

" transparent bg
hi Normal guibg=NONE

" default scheme color override
au ColorScheme default hi Pmenu guibg=#262626
au ColorScheme default hi CursorLine guibg=#101010
au ColorScheme default hi CursorColumn guibg=#101010
au ColorScheme default hi Folded guibg=#303030
au ColorScheme default hi TabLine gui=NONE guibg=#303030
au ColorScheme default hi TabLineFill gui=bold guibg=#303030
au ColorScheme default hi NonText guifg=#585858
au ColorScheme default hi StatusLine gui=bold guibg=#303030
au ColorScheme default hi Visual guibg=#404040
au ColorScheme default hi PmenuSel guibg=#404040
au ColorScheme default hi MatchParen guibg=#404040
au ColorScheme default hi Directory gui=bold guifg=#87afaf
au ColorScheme default hi LineNr guifg=#585858 gui=bold

set mouse=

" gitgutter colors
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" Themes ===========================================

" toggle nvim tree/side file explorer
" NvimTreeFocus
