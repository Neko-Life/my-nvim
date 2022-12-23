-- SIDE FILE EXPLORER -------------------------------------------------
-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

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
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions

-- Mappings ================
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+ (150)
  debounce_text_changes = 1000, -- need 1 second of silence then start disturbing the silence with clangd
}

local coq = require("coq");
local lspconf = require('lspconfig');

-- lspconf.clangd.setup(coq.lsp_ensure_capabilities({
-- --     capabilities = capabilities,
--    on_attach = on_attach,
--    flags = lsp_flags,
-- }))

require("clangd_extensions").setup {
        -- options to pass to nvim-lspconfig
        -- i.e. the arguments to require("lspconfig").clangd.setup({})
    server = coq.lsp_ensure_capabilities({
      on_attach = on_attach,
      flags = lsp_flags,
    }),
    extensions = {
        -- defaults:
        -- Automatically set inlay hints (type hints)
        autoSetHints = true,
        -- These apply to the default ClangdSetInlayHints command
        inlay_hints = {
            -- Only show inlay hints for the current line
            only_current_line = false,
            -- Event which triggers a refersh of the inlay hints.
            -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
            -- not that this may cause  higher CPU usage.
            -- This option is only respected when only_current_line and
            -- autoSetHints both are true.
            only_current_line_autocmd = "CursorHold",
            -- whether to show parameter hints with the inlay hints or not
            show_parameter_hints = true,
            -- prefix for parameter hints
            parameter_hints_prefix = "<- ",
            -- prefix for all the other hints (type, chaining)
            other_hints_prefix = "=> ",
            -- whether to align to the length of the longest line in the file
            max_len_align = false,
            -- padding from the left if max_len_align is true
            max_len_align_padding = 1,
            -- whether to align to the extreme right or not
            right_align = false,
            -- padding from the right if right_align is true
            right_align_padding = 7,
            -- The color of the hints
            highlight = "Comment",
            -- The highlight group priority for extmark
            priority = 100,
        },
        ast = {
            -- These are unicode, should be available in any font
            -- role_icons = {
            --      type = "🄣",
            --      declaration = "🄓",
            --      expression = "🄔",
            --      statement = ";",
            --      specifier = "🄢",
            --      ["template argument"] = "🆃",
            -- },
            -- kind_icons = {
            --     Compound = "🄲",
            --     Recovery = "🅁",
            --     TranslationUnit = "🅄",
            --     PackExpansion = "🄿",
            --     TemplateTypeParm = "🅃",
            --     TemplateTemplateParm = "🅃",
            --     TemplateParamObject = "🅃",
            -- },
            -- These require codicons (https://github.com/microsoft/vscode-codicons)
            role_icons = {
                type = "",
                declaration = "",
                expression = "",
                specifier = "",
                statement = "",
                ["template argument"] = "",
            },

            kind_icons = {
                Compound = "",
                Recovery = "",
                TranslationUnit = "",
                PackExpansion = "",
                TemplateTypeParm = "",
                TemplateTemplateParm = "",
                TemplateParamObject = "",
            },

            highlights = {
                detail = "Comment",
            },
        },
        memory_usage = {
            border = "none",
        },
        symbol_info = {
            border = "none",
        },
    },
}

-- lspconf.tsserver.setup(coq.lsp_ensure_capabilities({
-- --     capabilities = capabilities,
--   on_attach = on_attach,
--   flags = lsp_flags,
-- }))

require("typescript").setup({
  disable_commands = false, -- prevent the plugin from creating Vim commands
  debug = false, -- enable debug logging for commands
  go_to_source_definition = {
      fallback = true, -- fall back to standard LSP definition on failure
  },
  server = coq.lsp_ensure_capabilities({
    --     capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
  }),  -- pass options to lspconfig's setup method
})

lspconf.vuels.setup(coq.lsp_ensure_capabilities({
--     capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}))

-- start mason
-- require("mason").setup()

lspconf.quick_lint_js.setup(coq.lsp_ensure_capabilities({
--     capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}))

lspconf.cmake.setup(coq.lsp_ensure_capabilities({
--     capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}))

-- lspconf.tailwindcss.setup(coq.lsp_ensure_capabilities({
-- --     capabilities = capabilities,
--   on_attach = on_attach,
--   flags = lsp_flags,
-- }))

-- Mappings ================

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

-- Setup web devicons
-- require('nvim-web-devicons').setup {
--  -- your personnal icons can go here (to override)
--  -- you can specify color or cterm_color instead of specifying both of them
--  -- DevIcon will be appended to `name`
--  -- override = {
--  --  zsh = {
--  --    icon = "",
--  --    color = "#428850",
--  --    cterm_color = "65",
--  --    name = "Zsh"
--  --  }
--  -- };
--  -- globally enable different highlight colors per icon (default to true)
--  -- if set to false all icons will have the default icon's color
--  color_icons = true;
--  -- globally enable default icons (default to false)
--  -- will get overriden by `get_icons` option
--  default = true;
-- }
