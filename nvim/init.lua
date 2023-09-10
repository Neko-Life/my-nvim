-- ----- SETTINGS -----
-- set shiftwidth=8
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'screenline'
vim.opt.scrolloff = 14

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

-- Open all argument file in tabs
-- tab all
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

-- source .vimrc
vim.cmd('so ~/.vimrc')

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

-- ----- MAPPING -----
-- default mapping options
local opts = { noremap=true }

-- Tabs navigation
vim.keymap.set('n', '<A-Up>', '<cmd>sp<cr>', opts)
vim.keymap.set('n', '<A-Down>', '<cmd>new<cr>', opts)
vim.keymap.set('n', '<A-Left>', '<cmd>vne<cr>', opts)
vim.keymap.set('n', '<A-Right>', '<cmd>vs<cr>', opts)
vim.keymap.set('n', '<A-CR>', '<cmd>tab sp<cr>', opts)
vim.keymap.set('n', '<A-Space>', '<cmd>tabnew<cr>', opts)

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

-- Terminal
vim.keymap.set('n', '<leader>tt', '<cmd>tabe term://fish<cr>', opts) -- Terminal in new Tab
vim.keymap.set('n', '<leader>th', '<cmd>e term://fish<cr>', opts) -- Terminal Here

-- GitGutter
vim.keymap.set('n', '<leader>vh', '<cmd>GitGutterPreviewHunk<cr>', opts) -- View Hunk
vim.keymap.set('n', '<leader>sh', '<cmd>GitGutterStageHunk<cr>', opts) -- Stage Hunk
vim.keymap.set('n', '<leader>uh', '<cmd>GitGutterUndoHunk<cr>', opts) -- Undo Hunk
vim.keymap.set('n', '<leader>nh', '<cmd>GitGutterNextHunk<cr>', opts) -- Next Hunk
vim.keymap.set('n', '<leader>ph', '<cmd>GitGutterPrevHunk<cr>', opts) -- Prev Hunk

-- git, broken prompting
vim.keymap.set('n', '<leader>ga', '<cmd>!git add %<cr>', opts) -- Git Add current file
vim.keymap.set('n', '<leader>gc', ':!git commit -m \'\'<Left>', opts) -- Git Commit with message
vim.keymap.set('n', '<leader>gp', '<cmd>!git push<cr>', opts) -- Git Push

-- vimspector
vim.keymap.set('n', '<Space><Space>', '<Plug>VimspectorContinue', opts) -- Start or continue debugging
vim.keymap.set('n', '<Space>ds', '<Plug>VimspectorStop', opts) -- Debug Stop
vim.keymap.set('n', '<Space>dq', '<Plug>VimspectorReset', opts) -- Debug Quit
vim.keymap.set('n', '<Space>dr', '<Plug>VimspectorRestart', opts) -- Debug Restart
vim.keymap.set('n', '<Space>di', '<Plug>VimspectorBalloonEval', opts) -- Debug Inspect
vim.keymap.set('x', '<Space>di', '<Plug>VimspectorBalloonEval', opts) -- Debug Inspect visual mode
vim.keymap.set('n', '<Space>p', '<Plug>VimspectorPause', opts) -- Pause
vim.keymap.set('n', '<Space>b', '<Plug>VimspectorToggleBreakpoint', opts) -- Breakpoint
vim.keymap.set('n', '<Space>B', '<Plug>VimspectorBreakpoints', opts) -- show Breakpoint
vim.keymap.set('n', '<Space>cb', '<Plug>VimspectorToggleConditionalBreakpoint', opts) -- Conditional Breakpoint
vim.keymap.set('n', '<Space>cg', '<Plug>VimspectorRunToCursor', opts) -- Cursor Go
vim.keymap.set('n', '<Space>n', '<Plug>VimspectorStepOver', opts) -- Next
vim.keymap.set('n', '<Space>i', '<Plug>VimspectorStepInto', opts) -- In
vim.keymap.set('n', '<Space>N', '<Plug>VimspectorStepOut', opts) -- Next step out
vim.keymap.set('n', '<Space>fu', '<Plug>VimspectorUpFrame', opts) -- Frame Up
vim.keymap.set('n', '<Space>fd', '<Plug>VimspectorDownFrame', opts) -- Frame Down
vim.keymap.set('n', '<Space>sd', '<Plug>VimspectorDisassemble', opts) -- Show Disassemble

-- ----- AUTOCOMMANDS -----
local mygroup = vim.api.nvim_create_augroup('vimrc', { clear = true })

-- ejs syntax workaround
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.ejs',
  group = mygroup,
  callback = function()
    vim.opt_local.filetype = 'html'
  end,
})

-- format files on save
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = '*.{jsx,ts,tsx}',
  group = mygroup,
  command = 'Neoformat',
})

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

require('shasha')

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
vim.api.nvim_create_autocmd({ 'ColorScheme *' }, {
  group = mygroup,
  command = 'hi Normal guibg=NONE'
})

-- clear VertSplit color
vim.api.nvim_create_autocmd({ 'ColorScheme *' }, {
  group = mygroup,
  command = 'hi clear VertSplit'
})

-- status line color
vim.api.nvim_create_autocmd({ 'ColorScheme *' }, {
  group = mygroup,
  command = 'hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse gui=bold guifg=NONE guibg=NONE'
})
vim.api.nvim_create_autocmd({ 'ColorScheme *' }, {
  group = mygroup,
  command = 'hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=reverse gui=bold guifg=NONE guibg=#303030'
})
vim.api.nvim_create_autocmd({ 'ColorScheme *' }, {
  group = mygroup,
  command = 'hi TabLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=#303030'
})
vim.api.nvim_create_autocmd({ 'ColorScheme *' }, {
  group = mygroup,
  command = 'hi TabLineFill ctermfg=NONE ctermbg=NONE guifg=NONE gui=bold guibg=#303030'
})
vim.api.nvim_create_autocmd({ 'ColorScheme *' }, {
  group = mygroup,
  command = 'hi TabLineSel cterm=bold gui=bold'
})

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
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi Pmenu guibg=#262626'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi CursorLine guibg=#101010'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi CursorColumn guibg=#101010'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi Folded guibg=#303030'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi TabLine gui=NONE guibg=#303030'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi TabLineFill gui=bold guibg=#303030'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi NonText guifg=#585858'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi Visual guibg=#404040'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi PmenuSel guibg=#404040'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi MatchParen guibg=#404040'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi Directory gui=bold guifg=#87afaf'
})
vim.api.nvim_create_autocmd({ 'ColorScheme default' }, {
  group = mygroup,
  command = 'hi LineNr guifg=#585858 gui=bold'
})

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
