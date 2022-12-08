-- SIDE FILE EXPLORER -------------------------------------------------
-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- LSP ------------------------------------------------------------------
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require('lspconfig').clangd.setup {
--     capabilities = capabilities,
}

require('lspconfig').quick_lint_js.setup {
--     capabilities = capabilities,
}
-- 
-- -- luasnip setup
-- local luasnip = require 'luasnip'
-- local lspkind = require 'lspkind'
-- 
-- -- nvim-cmp setup
-- local cmp = require 'cmp'
-- cmp.setup {
--     snippet = {
--         expand = function(args)
--             luasnip.lsp_expand(args.body)
--         end,
--     },
--     mapping = cmp.mapping.preset.insert({
-- 	['<C-d>'] = cmp.mapping.scroll_docs(-4),
-- 	['<C-f>'] = cmp.mapping.scroll_docs(4),
-- 	['<C-Space>'] = cmp.mapping.complete(),
-- 	['<CR>'] = cmp.mapping.confirm {
-- 	    behavior = cmp.ConfirmBehavior.Replace,
-- 	    select = true,
-- 	},
-- 	['<Tab>'] = cmp.mapping(function(fallback)
-- 	    if cmp.visible() then
-- 		cmp.select_next_item()
-- 	    elseif luasnip.expand_or_jumpable() then
-- 		luasnip.expand_or_jump()
-- 	    else
-- 		fallback()
-- 	    end
-- 	end, { 'i', 's' }),
-- 	['<S-Tab>'] = cmp.mapping(function(fallback)
-- 	    if cmp.visible() then
-- 		cmp.select_prev_item()
-- 	    elseif luasnip.jumpable(-1) then
-- 		luasnip.jump(-1)
-- 	    else
-- 		fallback()
-- 	    end
-- 	end, { 'i', 's' }),
--     }),
--     sources = {
-- 	{ name = 'nvim_lsp' },
-- 	{ name = 'luasnip' },
--     },
--     formatting = {
-- 	format = lspkind.cmp_format {
-- 	    with_text = true,
-- 	    menu = {
-- 		buffer   = "[buf]",
-- 		nvim_lsp = "[LSP]",
-- 		path     = "[path]",
-- 	    },
-- 	},
--     },
--     experimental = {
-- 	ghost_text = true
--     }
-- }
-- LSP ------------------------------------------------------------------

-- require('lint').linters_by_ft = {
--   markdown = {'vale',},
--   cpp = {'clangtidy',},
--   c = {'clangtidy',},
--   js = {'eslint',},
--   ts = {'eslint',},
-- }
-- 
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--   callback = function()
--     require("lint").try_lint()
--   end,
-- })
