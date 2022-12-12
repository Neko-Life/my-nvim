" ----- SETTINGS -----
" set shiftwidth=8
set number
set relativenumber
set cursorline
set cursorlineopt=screenline
set scrolloff=14
" filetype indent plugin off
syntax on
set sw=2 " 2 spaces shiftwidth for literally every single js project

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" ----- PLUGINS -----
Plug 'vimsence/vimsence' " Discord Presence
Plug 'neovim/nvim-lspconfig' " LSP --------------------
" Plug 'williamboman/mason.nvim' " lsp installer and manager
Plug 'tpope/vim-commentary' " Comment a line `gcc`, comment visual `gc`

" React Snippets
" Plug 'SirVer/ultisnips'
" Plug 'mlaursen/vim-react-snippets'
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" React Snippets

Plug 'jiangmiao/auto-pairs' " Bracket auto pairing and deleting

" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'saadparwaiz1/cmp_luasnip'
" Plug 'L3MON4D3/LuaSnip'
" Plug 'onsails/lspkind.nvim'
" LSP ---------------------

" Plug 'LucHermitte/lh-vim-lib'
" Plug 'LucHermitte/lh-style'
" Plug 'LucHermitte/lh-tags'
" Plug 'LucHermitte/lh-dev'
" Plug 'LucHermitte/lh-brackets'
" Plug 'LucHermitte/searchInRuntime'
" Plug 'LucHermitte/mu-template'
" Plug 'tomtom/stakeholders_vim'
" Plug 'LucHermitte/alternate-lite'
" Plug 'LucHermitte/lh-cpp'

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'wakatime/vim-wakatime'
" Plug 'mfussenegger/nvim-lint'

" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" coc-snippets coc-yaml coc-rls
" let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-python', 'coc-clangd', '@yaegassy/coc-volar', 'coc-tailwindcss']

" run :CocCommand clangd.install https://github.com/clangd/coc-clangd

" JS, JSX and TSX syntax highlighting ///////////////////////////////////////
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
" JS, JSX and TSX syntax highlighting end ///////////////////////////////////

" side file explorer
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

" Vue highlighting
Plug 'posva/vim-vue'

" Themes ===========================================

" Plug 'jacoborus/tender.vim'
" More config for tender in ~/.config/nvim/init.vim

" Plug 'itchyny/lightline.vim'
" More config for lightline in ~/.config/nvim/init.vim

" Themes ===========================================


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:

" 	[FOR INDENTATION PRACTICE]
" filetype indent off   " Disable file-type-specific indentation

"   syntax off            " Disable syntax highlighting
"
"   sw = shiftwidth
"   ts = tabstop
"   et = expandtab
"   For vscode compatibility you have to set sw to vscode spaces indentation
"   indentation setting
"   example if vscode space indentation is 2 spaces, run the commands:
"   :set sw=2 ts=8


" ----- MAPPING -----
" Tabs navigation
nnoremap <A-Up> :sp<CR>
nnoremap <A-Down> :new<CR>
nnoremap <A-Left> :vne<CR>
nnoremap <A-Right> :vs<CR>
nnoremap <A-CR> :tab sp<CR>

" Open all argument file in tabs
tab all
" Autostart coq
let g:coq_settings = { 'auto_start': v:true }

" ejs syntax workaround
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.{cpp,c,hpp,h} set sw=8 " Set shiftwidth to 8 for cpp projects
au BufNewFile,BufRead Makefile set sw=8

" Define some more pairs not built-in by auto-pairs
" 		.{js,ejs,html,tsx,jsx}
au BufNewFile,BufRead *.{html,ejs,vue,js,jsx,tsx} let b:AutoPairs = AutoPairsDefine({ '<' : '>' })
let g:AutoPairsMultilineClose = 0

" no text wrapping
set nowrap
