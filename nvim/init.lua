-- ----- SETTINGS -----
-- Autostart coq
vim.g.coq_settings = { auto_start = true }

-- enable git blame
vim.g.blamer_enabled = 1
-- disable in insert mode
vim.g.blamer_show_in_insert_modes = 0
-- info template
vim.g.blamer_template = '@<author>, @<committer>, <committer-time>, [<commit-short>] • <summary>'
vim.g.blamer_date_format = '%Y%m%d %H:%M:%S'
-- relative time
-- let g:blamer_relative_time = 1
-- delay before showing blame
vim.g.blamer_delay = 3000

-- netrw settings
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0

-- Define some more pairs not built-in by auto-pairs
-- 		.{js,ejs,html,tsx,jsx}
-- au BufNewFile,BufRead *.{html,ejs,vue,js,jsx,tsx} let b:AutoPairs = AutoPairsDefine({ '<' : '>' })
-- let g:AutoPairsMultilineClose = 0

-- debugger
-- vim.g.vimspector_enable_mappings = 'HUMAN'
vim.g.vimspector_base_dir = '/home/neko-chan/.local/share/nvim/plugged/vimspector'

-- neoformat: try use node formatter first
vim.g.neoformat_try_node_exe = 1

-- codestats config
-- vim.g.codestats_api_key =
-- vim.g.codestats_api_url =

-- gitgutter
-- vim.g.gitgutter_max_signs = 500

-- set no match parent
vim.g.loaded_matchparen = 1

-- source .vimrc
vim.cmd('so ~/.vimrc')

---- Settings should be after plug config ----
-- set shiftwidth=8
vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.cursorline = true
-- vim.opt.cursorlineopt = 'screenline'
vim.opt.scrolloff = 14
vim.opt.sidescrolloff = 14

vim.opt.mouse = ''

--2 spaces shiftwidth for literally every single js project
vim.opt.sw = 2

-- no text wrapping
vim.opt.wrap = false

-- gitgutter update time, this setting also used by swap save crash recovery
vim.opt.updatetime = 300

-- folding
-- set foldmethod=expr
-- set foldexpr=nvim_treesitter#foldexpr()
-- set nofoldenable                     " Disable folding at startup.
vim.opt.et = true

-- no VertSplit
vim.opt.fillchars = "vert:|"

-- disable syntax highlighting
vim.cmd('syntax off')

-- Open all argument file in tabs
-- tab all

-- 	[FOR INDENTATION PRACTICE]
-- filetype indent off   " Disable file-type-specific indentation

--   syntax off            " Disable syntax highlighting
--   sw = shiftwidth
--   ts = tabstop
--   et = expandtab
--   For vscode compatibility you have to set sw to vscode spaces indentation
--   indentation setting
--   example if vscode space indentation is 2 spaces, run the commands:
--   :set sw=2 ts=8

-- Beautiful parenthesis
-- Default setting is fine
-- This module contains a number of default definitions
-- local rainbow_delimiters = require 'rainbow-delimiters'

-- vim.g.rainbow_delimiters = {
--     strategy = {
--         [''] = rainbow_delimiters.strategy['global'],
--         vim = rainbow_delimiters.strategy['local'],
--     },
--     query = {
--         [''] = 'rainbow-delimiters',
--         lua = 'rainbow-blocks',
--     },
--     highlight = {
--         'RainbowDelimiterRed',
--         'RainbowDelimiterYellow',
--         'RainbowDelimiterBlue',
--         'RainbowDelimiterOrange',
--         'RainbowDelimiterGreen',
--         'RainbowDelimiterViolet',
--         'RainbowDelimiterCyan',
--     },
-- }

-- ----- MAPPING -----
-- default mapping options
local opts = { noremap=true }

-- Tabs navigation
vim.keymap.set('n', '<A-Up>', '<cmd>sp<cr>', opts)
vim.keymap.set('n', '<A-Down>', '<cmd>new<cr>', opts)
vim.keymap.set('n', '<A-Left>', '<cmd>vne<cr>', opts)
vim.keymap.set('n', '<A-Right>', '<cmd>vs<cr>', opts)
vim.keymap.set('n', '<A-CR>', '<cmd>tab sp<cr>', opts)
vim.keymap.set('n', '<A-n>', '<cmd>tabnew<cr>', opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, opts) -- Find Files
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts) -- Find Grep
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts) -- Find filename in Buffer list
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts) -- Find Help
vim.keymap.set('n', '<leader>f?', builtin.oldfiles, opts) -- old Files?

-- git rev viewer
-- diffview
vim.keymap.set('n', '<leader>df', '<cmd>DiffviewFileHistory %<cr>', opts) -- Diff File history
vim.keymap.set('n', '<leader>dh', '<cmd>DiffviewFileHistory<cr>', opts) -- Diff History
vim.keymap.set('n', '<leader>dc', '<cmd>DiffviewClose<cr>', opts) -- Diff Close
vim.keymap.set('n', '<leader>do', '<cmd>DiffviewOpen<cr>', opts) -- Diff Open

-- NvimTree
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', opts) -- Explore

-- move window to new tab: <Ctrl-W> T
-- move window to other window: just open the window buffer in that new window

-- Terminal
vim.keymap.set('n', '<leader>tt', '<cmd>tabe term://fish<cr>', opts) -- Terminal in new Tab
vim.keymap.set('n', '<leader>th', '<cmd>e term://fish<cr>', opts) -- Terminal Here

-- GitGutter
-- n  [c           @<Plug>(GitGutterPrevHunk)
-- n  \hp          @<Plug>(GitGutterPreviewHunk)
-- n  \hu          @<Plug>(GitGutterUndoHunk)
-- n  \hs          @<Plug>(GitGutterStageHunk)
-- x  \hs          @<Plug>(GitGutterStageHunk)
-- n  ]c           @<Plug>(GitGutterNextHunk)
-- x  ac           @<Plug>(GitGutterTextObjectOuterVisual)
-- o  ac           @<Plug>(GitGutterTextObjectOuterPending)
-- x  ic           @<Plug>(GitGutterTextObjectInnerVisual)
-- o  ic           @<Plug>(GitGutterTextObjectInnerPending)

-- git, broken prompting
vim.keymap.set('n', '<leader>ga', '<cmd>!git add %<cr>', opts) -- Git Add current file
vim.keymap.set('n', '<leader>gc', ':!git commit -m \'\'<Left>', opts) -- Git Commit with message
vim.keymap.set('n', '<leader>gp', '<cmd>!git push<cr>', opts) -- Git Push
vim.keymap.set('n', '<leader>gs', '<cmd>!git status<cr>', opts) -- Git Status

-- vimspector
vim.keymap.set('n', '<leader><Space><Space>', '<Plug>VimspectorContinue', opts) -- Start or continue debugging
vim.keymap.set('n', '<leader><Space>ds', '<Plug>VimspectorStop', opts) -- Debug Stop
vim.keymap.set('n', '<leader><Space>dq', '<cmd>VimspectorReset<CR>', opts) -- Debug Quit
vim.keymap.set('n', '<leader><Space>dr', '<Plug>VimspectorRestart', opts) -- Debug Restart
vim.keymap.set('n', '<leader><Space>di', '<Plug>VimspectorBalloonEval', opts) -- Debug Inspect
vim.keymap.set('x', '<leader><Space>di', '<Plug>VimspectorBalloonEval', opts) -- Debug Inspect visual mode
vim.keymap.set('n', '<leader><Space>p', '<Plug>VimspectorPause', opts) -- Pause
vim.keymap.set('n', '<leader><Space>b', '<Plug>VimspectorToggleBreakpoint', opts) -- Breakpoint
vim.keymap.set('n', '<leader><Space>B', '<Plug>VimspectorBreakpoints', opts) -- show Breakpoint
vim.keymap.set('n', '<leader><Space>cb', '<Plug>VimspectorToggleConditionalBreakpoint', opts) -- Conditional Breakpoint
vim.keymap.set('n', '<leader><Space>cg', '<Plug>VimspectorRunToCursor', opts) -- Cursor Go
vim.keymap.set('n', '<leader><Space>n', '<Plug>VimspectorStepOver', opts) -- Next
vim.keymap.set('n', '<leader><Space>i', '<Plug>VimspectorStepInto', opts) -- In
vim.keymap.set('n', '<leader><Space>N', '<Plug>VimspectorStepOut', opts) -- Next step out
vim.keymap.set('n', '<leader><Space>fu', '<Plug>VimspectorUpFrame', opts) -- Frame Up
vim.keymap.set('n', '<leader><Space>fd', '<Plug>VimspectorDownFrame', opts) -- Frame Down
vim.keymap.set('n', '<leader><Space>sd', '<Plug>VimspectorDisassemble', opts) -- Show Disassemble

-- dropbar
-- vim.keymap.set('n', '<Space>b', function()
--   require('dropbar.api').pick()
-- end, opts) -- Pick dropbar

-- outline
vim.keymap.set('n', '<Space>b', '<cmd>Outline<CR>', opts) -- Toggle Outline

-- ----- AUTOCOMMANDS -----
local mygroup = vim.api.nvim_create_augroup('shasha_my_nvim', { clear = true })

-- ejs syntax workaround
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.ejs',
  group = mygroup,
  callback = function()
    vim.opt_local.filetype = 'html'
  end,
})

-- disabled cuz slow on big files, run the command manually
-- format files on save
-- vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
--   pattern = '*.{jsx,ts,tsx}',
--   group = mygroup,
--   command = 'Neoformat',
-- })

-- shiftwidth and tabstop configs
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.{cpp,c,hpp,h}',
  group = mygroup,
  -- Set shiftwidth to 4 for cpp projects
  callback = function()
    vim.opt_local.sw = 4
    vim.opt_local.ts = 4
  end,
})
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = 'Makefile',
  group = mygroup,
  -- Set shiftwidth to 8 for Makefile
  callback = function()
    vim.opt_local.sw = 8
    vim.opt_local.ts = 8
  end,
})
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.php',
  group = mygroup,
  -- Set shiftwidth to 2 for php file
  callback = function()
    vim.opt_local.sw = 2
    vim.opt_local.ts = 2
    vim.opt_local.et = false
  end,
})

-- enable gitgutter linenr highlight
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*',
  group = mygroup,
  command = 'GitGutterLineNrHighlightsEnable'
})

-- ale: formatter
-- let g:ale_fixers = {
--  \ 'javascript': ['eslint']
--  \ }
-- let g:ale_sign_error = '❌'
-- let g:ale_sign_warning = '⚠️'
-- let g:ale_fix_on_save = 1
-- let g:ale_virtualenv_dir_names = []

-- all lspconfig and treesitter stuff
require('shasha')

-- sonarlint
require('sonar-conf')

-- lua require('coc-config')

-- Themes ===========================================

-- BEGIN lightline.vim config
-- set lighline theme inside lightline config
-- let g:lightline = { 'colorscheme': 'tender' }
-- END lightline.vim config

-- BEGIN tender.vim config

-- For Neovim 0.1.3 and 0.1.4
-- let $NVIM_TUI_ENABLE_TRUE_COLOR=1

-- Theme

-- transparent bg for all colorscheme

vim.cmd([[
au shasha_my_nvim ColorScheme * hi Normal guibg=NONE
au shasha_my_nvim ColorScheme * hi Pmenu guibg=NONE

au shasha_my_nvim ColorScheme * hi clear VertSplit

au shasha_my_nvim ColorScheme * hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse gui=bold guifg=NONE guibg=NONE
au shasha_my_nvim ColorScheme * hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=reverse gui=bold guifg=NONE guibg=NONE
au shasha_my_nvim ColorScheme * hi TabLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=#303030
au shasha_my_nvim ColorScheme * hi TabLineFill ctermfg=NONE ctermbg=NONE guifg=NONE gui=bold guibg=#303030
au shasha_my_nvim ColorScheme * hi TabLineSel cterm=bold gui=bold
]])

-- clear VertSplit color

-- status line color

-- default
-- :hi StatusLineNC
-- StatusLineNC   xxx cterm=reverse gui=bold guibg=#303030
-- :hi StatusLine
-- StatusLine     xxx cterm=bold,reverse gui=bold
--
-- :hi TabLine
-- TabLine        xxx cterm=underline ctermfg=15 ctermbg=242 guibg=#303030
-- :hi TabLineFill
-- TabLineFill    xxx cterm=reverse gui=bold guibg=#303030
-- :hi TabLineSel
-- TabLineSel     xxx cterm=bold gui=bold

-- habamax
--:hi StatusLine
-- StatusLine     xxx ctermfg=234 ctermbg=247 gui=bold guifg=#1c1c1c
-- :hi StatusLineNC
-- StatusLineNC   xxx ctermfg=234 ctermbg=243 gui=bold guifg=#1c1c1c guibg=#303030
--
-- :hi TabLine
-- TabLine        xxx ctermfg=234 ctermbg=243 guifg=#1c1c1c guibg=#767676
-- :hi TabLineFill
-- TabLineFill    xxx ctermfg=234 ctermbg=243 guifg=#1c1c1c guibg=#767676
-- :hi TabLineSel
-- TabLineSel     xxx cterm=bold gui=bold

-- set theme
vim.cmd('colorscheme habamax')

-- default scheme color override
vim.cmd([[
au shasha_my_nvim ColorScheme default hi CursorLine guibg=#101010
au shasha_my_nvim ColorScheme default hi CursorColumn guibg=#101010
au shasha_my_nvim ColorScheme default hi Folded guibg=#303030
au shasha_my_nvim ColorScheme default hi TabLine gui=NONE guibg=#303030
au shasha_my_nvim ColorScheme default hi TabLineFill gui=bold guibg=#303030
au shasha_my_nvim ColorScheme default hi NonText guifg=#585858
au shasha_my_nvim ColorScheme default hi Visual guibg=#404040
au shasha_my_nvim ColorScheme default hi PmenuSel guibg=#404040
au shasha_my_nvim ColorScheme default hi MatchParen guibg=#404040
au shasha_my_nvim ColorScheme default hi Directory gui=bold guifg=#87afaf
au shasha_my_nvim ColorScheme default hi LineNr guifg=#585858 gui=bold
]])

-- gitgutter colors
vim.cmd('hi GitGutterAdd    guifg=#009900 ctermfg=2')
vim.cmd('hi GitGutterChange guifg=#bbbb00 ctermfg=3')
vim.cmd('hi GitGutterDelete guifg=#ff2222 ctermfg=1')

-- codestats lua
-- vim.api.nvim_create_autocmd({ 'TextChanged', 'InsertEnter' }, {
--   pattern = '*',
--   group = mygroup,
--   callback = function()
--     vim.cmd('CodeStatsXpSend')
--     vim.cmd('CodeStatsProfileUpdate')
--   end,
-- })

-- Themes ===========================================

-- toggle nvim tree/side file explorer
-- NvimTreeFocus
