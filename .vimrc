set runtimepath^=~/.vim runtimepath+=~/.vim/after

" only loads plugin if plug installed
if ! empty(globpath(&rtp, 'autoload/plug.vim'))
  " ----- PLUGINS -----
  let &packpath = &runtimepath
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
  " Plug 'vimsence/vimsence' " Discord Presence
  Plug 'andweeb/presence.nvim'
  Plug 'neovim/nvim-lspconfig' " LSP --------------------
  " Plug 'williamboman/mason.nvim' " lsp installer and manager

  " Plug 'jparise/vim-graphql' " GraphQL syntax highlighting
  " Plug 'p00f/clangd_extensions.nvim' " clangd ls extension features
  " Plug 'jose-elias-alvarez/typescript.nvim' " tsserver ls extension features

  " syntax highlighting
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " Plug 'JoosepAlviste/nvim-ts-context-commentstring'
  
  " built-in in nvim 0.10.0
  " Plug 'tpope/vim-commentary' " Comment a line `gcc`, comment visual `gc`

  " auto tags
  Plug 'windwp/nvim-ts-autotag'

  " more TS stuff
  " Plug 'nvim-treesitter/nvim-treesitter-refactor'
  " Plug 'folke/twilight.nvim'
  " Plug 'theHamsta/nvim-treesitter-pairs'

  " colorful brackets
  " Plug 'hiphish/rainbow-delimiters.nvim'

  " Plug 'nvim-treesitter/nvim-treesitter-context'
  " Plug 'nvim-treesitter/playground'

  " debugger
  Plug 'puremourning/vimspector'

  " React Snippets
  " Plug 'SirVer/ultisnips'
  " Plug 'mlaursen/vim-react-snippets'
  " let g:UltiSnipsExpandTrigger="<tab>"
  " let g:UltiSnipsJumpForwardTrigger="<c-b>"
  " let g:UltiSnipsJumpBackwardTrigger="<c-z>"
  " React Snippets

  " Plug 'jiangmiao/auto-pairs' " Bracket auto pairing and deleting

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
  " requires `bc`
  Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

  " completion using cmp
  " Plug 'hrsh7th/nvim-cmp'

  " cmp sources
  " https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources
  " Plug 'hrsh7th/cmp-nvim-lsp'
  " Plug 'hrsh7th/cmp-buffer'
  " Plug 'hrsh7th/cmp-path'
  " Plug 'hrsh7th/cmp-cmdline'
  " Plug 'hrsh7th/cmp-nvim-lsp-document-symbol'
  " Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
  " quick math!
  " Plug 'hrsh7th/cmp-calc'

  " For vsnip users.
  " Plug 'hrsh7th/cmp-vsnip'
  " Plug 'hrsh7th/vim-vsnip'

  Plug 'wakatime/vim-wakatime'

  " Plug 'mfussenegger/nvim-lint'

  " formatter
  " Plug 'dense-analysis/ale' " very slow in NFS
  Plug 'sbdchd/neoformat' " npm -g install --save-dev prettier

  " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  " coc-snippets coc-yaml coc-rls
  " let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-python', 'coc-clangd', '@yaegassy/coc-volar', 'coc-tailwindcss']

  " run :CocCommand clangd.install https://github.com/clangd/coc-clangd

  " JS, JSX and TSX syntax highlighting ///////////////////////////////////////
  " Plug 'yuezk/vim-js'
  " Plug 'HerringtonDarkholme/yats.vim'
  " Plug 'maxmellon/vim-jsx-pretty'
  " Plug 'neoclide/vim-jsx-improve'
  " JS, JSX and TSX syntax highlighting end ///////////////////////////////////

  " side file explorer
  Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons. Telescope also uses this
  Plug 'nvim-tree/nvim-tree.lua'

  " Vue highlighting
  " Plug 'posva/vim-vue'

  " git gutter
  Plug 'airblade/vim-gitgutter'

  " git blame
  Plug 'APZelos/blamer.nvim'

  " markdown viewer
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

  " git rev viewer
  Plug 'sindrets/diffview.nvim'

  " brackets and `.` wrapper
  " add: ys{textobject}{char}
  "       ysa{)
  "       ysiw"
  " remove: ds{char}
  "       ds{
  " modify: cs{char}{newchar}
  "       cs{(
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'

  " boost production with unimpaired
  "
  Plug 'tpope/vim-unimpaired'

  " fast navigation with telescope
  " deps command:
  " pacman -S ripgrep
  " pacman -S fd
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'" , { 'tag': '0.1.2' }

  " official codestats
  " Plug 'https://gitlab.com/code-stats/code-stats-vim.git'

  " sonarlint
  " Plug 'https://gitlab.com/schrieveslaach/sonarlint.nvim'

  " lorem ipsum
  Plug 'vim-scripts/loremipsum'

  " view css color codes
  " git clone https://github.com/ap/vim-css-color.git ~/.vim/pack/css-color/start/css-color
  " Plug 'ap/vim-css-color' // not working?
  " if has('textprop')
  "   Plug 'BourgeoisBear/clrzr'
  " endif
  Plug 'NvChad/nvim-colorizer.lua'

  " database manager
  Plug 'tpope/vim-dadbod'
  Plug 'kristijanhusak/vim-dadbod-ui'
  Plug 'kristijanhusak/vim-dadbod-completion'

  " winbar nav
  " Plug 'Bekaboo/dropbar.nvim'

  " outline symbols
  Plug 'hedyhli/outline.nvim'

  " emmet.io
  Plug 'mattn/emmet-vim'

  " codestats lua, requires plenary.nvim
  " Plug 'liljaylj/codestats.nvim'

  " Themes ===========================================

  " Plug 'jacoborus/tender.vim'
  " More config for tender in ~/.config/nvim/init.vim

  " Plug 'itchyny/lightline.vim'
  " More config for lightline in ~/.config/nvim/init.vim

  " Themes ===========================================


  " AI thingy
  " Deps
  " Plug 'nvim-treesitter/nvim-treesitter'
  " Plug 'nvim-lua/plenary.nvim'
  Plug 'MunifTanjim/nui.nvim'
  Plug 'MeanderingProgrammer/render-markdown.nvim'

  " Optional deps
  " Plug 'hrsh7th/nvim-cmp'
  " Plug 'nvim-tree/nvim-web-devicons' "or Plug 'echasnovski/mini.icons'
  Plug 'HakonHarnes/img-clip.nvim'
  Plug 'zbirenbaum/copilot.lua'
  Plug 'stevearc/dressing.nvim' " for enhanced input UI
  Plug 'folke/snacks.nvim' " for modern input UI

  " Yay, pass source=true if you want to build from source
  Plug 'yetone/avante.nvim', { 'branch': 'main', 'do': 'make' }



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

  " gitgutter
  " function! GitStatus()
  "   let [a,m,r] = GitGutterGetHunkSummary()
  "   return printf('+%d ~%d -%d', a, m, r)
  " endfunction
  " set statusline=%{GitStatus()}

  " If you have vim >=8.0 or Neovim >= 0.1.5
  if (has("termguicolors"))
    set termguicolors
  endif

  " sql kristijanhusak/vim-dadbod-completion
  autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni

endif " if ! empty(globpath(&rtp, 'autoload/plug.vim'))

" set various vanilla vim settings if we're using vanilla vim
if ! has('nvim')
  " set shiftwidth=8

  let g:loaded_matchparen=1
  set number relativenumber scrolloff=14 sidescrolloff=14 mouse= sw=2 nowrap et fillchars=vert:\| synmaxcol=600
  " vim.opt.cursorline = true
  " vim.opt.cursorlineopt = 'screenline'

  " 2 spaces shiftwidth for literally every single js project

  " no text wrapping

  " gitgutter update time, this setting also used by swap save crash recovery
  " vim.opt.updatetime = 300

  " folding
  " set foldmethod=expr
  " set foldexpr=nvim_treesitter#foldexpr()
  " set nofoldenable                     " Disable folding at startup.

  " no VertSplit

  " ----- MAPPING -----
  " default mapping options
  " Tabs navigation
  nn <A-Up> <cmd>sp<cr>
  nn <A-Down> <cmd>new<cr>
  nn <A-Left> <cmd>vne<cr>
  nn <A-Right> <cmd>vs<cr>
  nn <A-CR> <cmd>tab sp<cr>
  nn <A-n> <cmd>tabnew<cr>

  " Terminal
  " Terminal in new Tab
  nn <leader>tt <cmd>tab term<cr>
  " Terminal Here
  nn <leader>th <cmd>term ++curwin<cr>

  " git, broken prompting
  " Git Add current file
  nn <leader>ga <cmd>!git add %<cr>
  " Git Commit with message
  nn <leader>gc :!git commit -m \
  " Git Push
  nn <leader>gp <cmd>!git push<cr>
  " Git Status
  nn <leader>gs <cmd>!git status<cr>
endif " if ! has('nvim')
