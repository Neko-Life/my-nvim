-- SIDE FILE EXPLORER -------------------------------------------------
-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

--
-- This function has been generated from your
--   view.mappings.list
--   view.mappings.custom_only
--   remove_keymaps
--
-- You should add this function to your configuration and set on_attach = on_attach in the nvim-tree setup call.
--
-- Although care was taken to ensure correctness and completeness, your review is required.
--
-- Please check for the following issues in auto generated content:
--   "Mappings removed" is as you expect
--   "Mappings migrated" are correct
--
-- Please see https://github.com/nvim-tree/nvim-tree.lua/wiki/Migrating-To-on_attach for assistance in migrating.
--

local function nvim_tree_on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end


  -- Default mappings. Feel free to modify or remove as you wish.
  --
  -- BEGIN_DEFAULT_ON_ATTACH
  vim.keymap.set('n', '<C-]>', api.tree.change_root_to_node,          opts('CD'))
  vim.keymap.set('n', '<C-e>', api.node.open.replace_tree_buffer,     opts('Open: In Place'))
  vim.keymap.set('n', '<C-k>', api.node.show_info_popup,              opts('Info'))
  vim.keymap.set('n', '<C-r>', api.fs.rename_sub,                     opts('Rename: Omit Filename'))
  vim.keymap.set('n', '<C-t>', api.node.open.tab,                     opts('Open: New Tab'))
  vim.keymap.set('n', '<C-v>', api.node.open.vertical,                opts('Open: Vertical Split'))
  vim.keymap.set('n', '<C-x>', api.node.open.horizontal,              opts('Open: Horizontal Split'))
  vim.keymap.set('n', '<BS>',  api.node.navigate.parent_close,        opts('Close Directory'))
  vim.keymap.set('n', '<CR>',  api.node.open.edit,                    opts('Open'))
  vim.keymap.set('n', '<Tab>', api.node.open.preview,                 opts('Open Preview'))
  vim.keymap.set('n', '>',     api.node.navigate.sibling.next,        opts('Next Sibling'))
  vim.keymap.set('n', '<',     api.node.navigate.sibling.prev,        opts('Previous Sibling'))
  vim.keymap.set('n', '.',     api.node.run.cmd,                      opts('Run Command'))
  vim.keymap.set('n', '-',     api.tree.change_root_to_parent,        opts('Up'))
  vim.keymap.set('n', 'a',     api.fs.create,                         opts('Create'))
  vim.keymap.set('n', 'bmv',   api.marks.bulk.move,                   opts('Move Bookmarked'))
  vim.keymap.set('n', 'B',     api.tree.toggle_no_buffer_filter,      opts('Toggle No Buffer'))
  vim.keymap.set('n', 'c',     api.fs.copy.node,                      opts('Copy'))
  vim.keymap.set('n', 'C',     api.tree.toggle_git_clean_filter,      opts('Toggle Git Clean'))
  vim.keymap.set('n', '[c',    api.node.navigate.git.prev,            opts('Prev Git'))
  vim.keymap.set('n', ']c',    api.node.navigate.git.next,            opts('Next Git'))
  vim.keymap.set('n', 'd',     api.fs.remove,                         opts('Delete'))
  vim.keymap.set('n', 'D',     api.fs.trash,                          opts('Trash'))
  vim.keymap.set('n', 'E',     api.tree.expand_all,                   opts('Expand All'))
  vim.keymap.set('n', 'e',     api.fs.rename_basename,                opts('Rename: Basename'))
  -- vim.keymap.set('n', ']e',    api.node.navigate.diagnostics.next,    opts('Next Diagnostic')) -- use ]d
  -- vim.keymap.set('n', '[e',    api.node.navigate.diagnostics.prev,    opts('Prev Diagnostic')) -- use [d
  vim.keymap.set('n', 'F',     api.live_filter.clear,                 opts('Clean Filter'))
  vim.keymap.set('n', 'f',     api.live_filter.start,                 opts('Filter'))
  vim.keymap.set('n', 'g?',    api.tree.toggle_help,                  opts('Help'))
  vim.keymap.set('n', 'gy',    api.fs.copy.absolute_path,             opts('Copy Absolute Path'))
  vim.keymap.set('n', 'H',     api.tree.toggle_hidden_filter,         opts('Toggle Dotfiles'))
  vim.keymap.set('n', 'I',     api.tree.toggle_gitignore_filter,      opts('Toggle Git Ignore'))
  vim.keymap.set('n', 'J',     api.node.navigate.sibling.last,        opts('Last Sibling'))
  vim.keymap.set('n', 'K',     api.node.navigate.sibling.first,       opts('First Sibling'))
  vim.keymap.set('n', 'm',     api.marks.toggle,                      opts('Toggle Bookmark'))
  vim.keymap.set('n', 'o',     api.node.open.edit,                    opts('Open'))
  vim.keymap.set('n', 'O',     api.node.open.no_window_picker,        opts('Open: No Window Picker'))
  vim.keymap.set('n', 'p',     api.fs.paste,                          opts('Paste'))
  vim.keymap.set('n', 'P',     api.node.navigate.parent,              opts('Parent Directory'))
  vim.keymap.set('n', 'q',     api.tree.close,                        opts('Close'))
  vim.keymap.set('n', 'r',     api.fs.rename,                         opts('Rename'))
  vim.keymap.set('n', 'R',     api.tree.reload,                       opts('Refresh'))
  vim.keymap.set('n', 's',     api.node.run.system,                   opts('Run System'))
  vim.keymap.set('n', 'S',     api.tree.search_node,                  opts('Search'))
  vim.keymap.set('n', 'U',     api.tree.toggle_custom_filter,         opts('Toggle Hidden'))
  vim.keymap.set('n', 'W',     api.tree.collapse_all,                 opts('Collapse'))
  vim.keymap.set('n', 'x',     api.fs.cut,                            opts('Cut'))
  vim.keymap.set('n', 'y',     api.fs.copy.filename,                  opts('Copy Name'))
  vim.keymap.set('n', 'Y',     api.fs.copy.relative_path,             opts('Copy Relative Path'))
  vim.keymap.set('n', '<2-LeftMouse>',  api.node.open.edit,           opts('Open'))
  vim.keymap.set('n', '<2-RightMouse>', api.tree.change_root_to_node, opts('CD'))
  -- END_DEFAULT_ON_ATTACH


  -- Mappings migrated from view.mappings.list
  --
  -- You will need to insert "your code goes here" for any mappings with a custom action_cb
  vim.keymap.set('n', 'u', api.tree.change_root_to_parent, opts('Up'))

end

-- setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    relativenumber = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  on_attach = nvim_tree_on_attach,
})

-- Telescope
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {".git", "*-lock.json", ".cache", "*.lock"},
    preview = {
      -- disable tree-sitter on preview
      treesitter = false
    }
  },
  pickers = {
    live_grep = {
      additional_args = function(opts)
        return {"--hidden"}
      end
    },
    find_files = {
      hidden = true
    }
  },
}

-- LSP ------------------------------------------------------------------
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions

-- Mappings ================
local opts = { noremap=true, silent=true }
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts) -- C-W+d
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
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
  vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, bufopts)
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
  debounce_text_changes = 500, -- half second wait to update lsp info
}

---------------------------------------- SETUP COMPLETION ----------------------------------------

-- https://github.com/ms-jpq/coq.thirdparty
require("coq_3p") {
  { src = "bc", short_name = "MATH", precision = 6 },
  { src = "vim_dadbod_completion", short_name = "DB"},
  -- { src = "dap" }, -- nvim-dap
  -- { src = "builtin/ada"     },
  -- { src = "builtin/c"       },
  -- { src = "builtin/clojure" },
  -- { src = "builtin/css"     },
  -- { src = "builtin/haskell" },
  -- { src = "builtin/html"    },
  -- { src = "builtin/js"      },
  -- { src = "builtin/php"     },
  -- { src = "builtin/syntax"  },
  -- { src = "builtin/xml"     },
}

local coq = require("coq");

-- local capabilities = require('cmp_nvim_lsp').default_capabilities()

local function conf_setup_hook(conf)
  return coq.lsp_ensure_capabilities(conf)
  -- conf.capabilities = conf.capabilities or {}

  -- for k,v in pairs(capabilities) do conf.capabilities[k] = v end

  -- return conf
end

-- Set up nvim-cmp.
-- local cmp = require('cmp')


-- local has_words_before = function()
--   unpack = unpack or table.unpack
--   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
--   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
-- end

-- local feedkey = function(key, mode)
--   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
-- end


-- cmp.setup({
--   snippet = {
--     -- REQUIRED - you must specify a snippet engine
--     expand = function(args)
--       vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
--       -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
--       -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
--       -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
--     end,
--   },
--   window = {
--     -- completion = cmp.config.window.bordered(),
--     -- documentation = cmp.config.window.bordered(),
--   },
--   mapping = cmp.mapping.preset.insert({
--     ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--     ['<C-f>'] = cmp.mapping.scroll_docs(4),
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.abort(),
--     -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--     ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
--     ["<Tab>"] = cmp.mapping(function(fallback)
--       if cmp.visible() then
--         cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
--       elseif vim.fn["vsnip#available"](1) == 1 then
--         feedkey("<Plug>(vsnip-expand-or-jump)", "")
--       elseif has_words_before() then
--         cmp.complete()
--       else
--         fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
--       end
--     end, { "i", "s" }),

--     ["<S-Tab>"] = cmp.mapping(function()
--       if cmp.visible() then
--         cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
--       elseif vim.fn["vsnip#jumpable"](-1) == 1 then
--         feedkey("<Plug>(vsnip-jump-prev)", "")
--       end
--     end, { "i", "s" }),
--   }),
--   sources = cmp.config.sources({
--     { name = 'nvim_lsp' },
--     { name = 'nvim_lsp_signature_help' },
--     { name = 'path' },
--     { name = 'calc' },
--     { name = 'vsnip' }, -- For vsnip users.
--     -- { name = 'luasnip' }, -- For luasnip users.
--     -- { name = 'ultisnips' }, -- For ultisnips users.
--     -- { name = 'snippy' }, -- For snippy users.
--   }, {
--     { name = 'buffer' },
--   })
-- })

-- Set configuration for specific filetype.
-- cmp.setup.filetype('gitcommit', {
--   sources = cmp.config.sources({
--     { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
--   }, {
--     { name = 'buffer' },
--   })
-- })

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline({ '/', '?' }, {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = {
--     { name = 'buffer' }
--   }
-- })

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline(':', {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = cmp.config.sources({
--     { name = 'path' }
--   }, {
--     { name = 'cmdline' }
--   })
-- })

---------------------------------------- LSP CONF ----------------------------------------
-- Set up lspconfig.
local lspconf = require('lspconfig');

lspconf.clangd.setup(conf_setup_hook({
  --     capabilities = capabilities,
  cmd = {
    "clangd",
    "--background-index",
    "-j=12",
    "--clang-tidy",
    "--clang-tidy-checks=-*,bugprone-*,cert-*,clang-analyzer-*,concurrency-*,cppcoreguidelines-*,llvm-namespace-comment,modernize-*,performance-*,portability-*,readability-*,-bugprone-implicit-widening-of-multiplication-result,-bugprone-easily-swappable-parameters,-readability-identifier-length,-portability-restrict-system-includes,-modernize-use-trailing-return-type,-cppcoreguidelines-non-private-member-variables-in-classes,-readability-avoid-const-params-in-decls",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
    "--header-insertion-decorators",
    "--function-arg-placeholders=0",
    "--malloc-trim",
    "--pch-storage=memory",
    "--limit-references=100",
    "--limit-results=25"--,
    -- "--rename-file-limit=4"
  },
  on_attach = function(client, bufnr)
    -- enable clangd_extensions inlay_hints
    -- require("clangd_extensions.inlay_hints").setup_autocmd()
    -- require("clangd_extensions.inlay_hints").set_inlay_hints()

    on_attach(client, bufnr);
  end,
  flags = {
    -- need 1 second of silence then start disturbing the silence with clangd
    debounce_text_changes = 1000,
  },
}))

-- Don't need to do this anymore, automatically follows
-- require("clangd_extensions").setup {
--         -- options to pass to nvim-lspconfig
--         -- i.e. the arguments to require("lspconfig").clangd.setup({})
--     server = conf_setup_hook({
--       on_attach = on_attach,
--       flags = lsp_flags,
--     }),
--     extensions = {
--         -- defaults:
--         -- Automatically set inlay hints (type hints)
--         autoSetHints = true,
--         -- These apply to the default ClangdSetInlayHints command
--         inlay_hints = {
--             -- Only show inlay hints for the current line
--             only_current_line = false,
--             -- Event which triggers a refersh of the inlay hints.
--             -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
--             -- not that this may cause  higher CPU usage.
--             -- This option is only respected when only_current_line and
--             -- autoSetHints both are true.
--             only_current_line_autocmd = "CursorHold",
--             -- whether to show parameter hints with the inlay hints or not
--             show_parameter_hints = true,
--             -- prefix for parameter hints
--             parameter_hints_prefix = "<- ",
--             -- prefix for all the other hints (type, chaining)
--             other_hints_prefix = "=> ",
--             -- whether to align to the length of the longest line in the file
--             max_len_align = false,
--             -- padding from the left if max_len_align is true
--             max_len_align_padding = 1,
--             -- whether to align to the extreme right or not
--             right_align = false,
--             -- padding from the right if right_align is true
--             right_align_padding = 7,
--             -- The color of the hints
--             highlight = "Comment",
--             -- The highlight group priority for extmark
--             priority = 100,
--         },
--         ast = {
--             -- These are unicode, should be available in any font
--             -- role_icons = {
--             --      type = "🄣",
--             --      declaration = "🄓",
--             --      expression = "🄔",
--             --      statement = ";",
--             --      specifier = "🄢",
--             --      ["template argument"] = "🆃",
--             -- },
--             -- kind_icons = {
--             --     Compound = "🄲",
--             --     Recovery = "🅁",
--             --     TranslationUnit = "🅄",
--             --     PackExpansion = "🄿",
--             --     TemplateTypeParm = "🅃",
--             --     TemplateTemplateParm = "🅃",
--             --     TemplateParamObject = "🅃",
--             -- },
--             -- These require codicons (https://github.com/microsoft/vscode-codicons)
--             role_icons = {
--                 type = "",
--                 declaration = "",
--                 expression = "",
--                 specifier = "",
--                 statement = "",
--                 ["template argument"] = "",
--             },

--             kind_icons = {
--                 Compound = "",
--                 Recovery = "",
--                 TranslationUnit = "",
--                 PackExpansion = "",
--                 TemplateTypeParm = "",
--                 TemplateTemplateParm = "",
--                 TemplateParamObject = "",
--             },

--             highlights = {
--                 detail = "Comment",
--             },
--         },
--         memory_usage = {
--             border = "none",
--         },
--         symbol_info = {
--             border = "none",
--         },
--     },
-- }

lspconf.ts_ls.setup(conf_setup_hook({
--     capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}))

-- require("typescript").setup({
--   disable_commands = false, -- prevent the plugin from creating Vim commands
--   debug = false, -- enable debug logging for commands
--   go_to_source_definition = {
--       fallback = true, -- fall back to standard LSP definition on failure
--   },
--   server = conf_setup_hook({
--     --     capabilities = capabilities,
--     on_attach = on_attach,
--     flags = lsp_flags,
--   }),  -- pass options to lspconfig's setup method
-- })

lspconf.volar.setup(conf_setup_hook({
--     capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}))

-- lspconf.vuels.setup(conf_setup_hook({
-- --     capabilities = capabilities,
--   on_attach = on_attach,
--   flags = lsp_flags,
-- }))

-- start mason
-- require("mason").setup()

lspconf.quick_lint_js.setup(conf_setup_hook({
--     capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}))

lspconf.cmake.setup(conf_setup_hook({
--     capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}))

lspconf.cssls.setup(
  conf_setup_hook({
  --     capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
  })
)

-- lspconf.emmet_ls.setup(
--   conf_setup_hook({
--   --     capabilities = capabilities,
--     on_attach = on_attach,
--     flags = lsp_flags,
--     filetypes = {
--       -- react js
--       -- "javascript", "less", "eruby"
--       "html", "typescriptreact", "javascriptreact", "css", "sass", "scss",
--     },
--   })
-- )

--Enable (broadcasting) snippet capability for completion
local html_cap = vim.lsp.protocol.make_client_capabilities()
html_cap.textDocument.completion.completionItem.snippetSupport = true

lspconf.html.setup(
  conf_setup_hook({
    capabilities = html_cap,
    on_attach = on_attach,
    flags = lsp_flags,
--    filetypes = {
--      -- react js
--      "javascript", "html"
--    },
  })
)

lspconf.svelte.setup(
  conf_setup_hook({
    on_attach = on_attach,
    flags = lsp_flags,
  })
)

lspconf.lua_ls.setup(
  conf_setup_hook({
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = {'vim'},
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file("", true),
          -- library = {
          --   [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          --   [vim.fn.stdpath "config" .. "/lua"] = true,
          -- },
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      },
    },
    cmd = { "/home/neko-chan/repos/lua-language-server/bin/lua-language-server" },
    on_attach = on_attach,
    flags = lsp_flags,
  })
)

-- Python lsp
-- pacman -S python-lsp-server python-mccabe python-pycodestyle python-pydocstyle python-pyflakes python-pylint python-rope flake8 yapf python-whatthepatch python-pystemmer python-appdirs
lspconf.pylsp.setup(
  conf_setup_hook({
    on_attach = on_attach,
    flags = lsp_flags,
  })
)

-- lspconf.java_language_server.setup(
--   conf_setup_hook({
--     on_attach = on_attach,
--     cmd = { "/home/neko-chan/repos/java-language-server/dist/launch_linux.sh" },
--     flags = lsp_flags,
--   })
-- )

-- lspconf.phpactor.setup(
--   conf_setup_hook({
--     on_attach = on_attach,
--     flags = lsp_flags,
--   })
-- )

-- crashes
-- lspconf.jdtls.setup(conf_setup_hook({
-- --     capabilities = capabilities,
--   on_attach = on_attach,
--   flags = lsp_flags,
-- }))

lspconf.tailwindcss.setup(conf_setup_hook({
--     capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
  settings = {
    tailwindCSS = {
      classAttributes = { "class", "className", "class:list", "classList", "ngClass", ".*Class.*" },
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        invalidTailwindDirective = "error",
        invalidVariant = "error",
        recommendedVariantOrder = "warning"
      },
      validate = true
    }
  }
}))

-- nvim-treesitter
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  -- ensure_installed = { "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

  -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
  -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
  -- the name of the parser)
  -- list of language that will be disabled
  -- disable = { "c", "rust" },
  -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
  disable = function(lang, buf)
      -- local max_filesize = 100 * 1024 -- 100 KB
      -- local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      -- if ok and stats and stats.size > max_filesize then
      --     return true
      -- end

      -- disable in big file or long buffer lines
      local line_count = vim.api.nvim_buf_line_count(buf)
      local file_size = vim.api.nvim_buf_get_offset(buf, line_count)
      return file_size > 1024 * 500                   -- >512kb
        or file_size / line_count > vim.o.synmaxcol   -- line too long
  end,

  --   -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
  --   -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
  --   -- Using this option may slow down your editor, and you may see some duplicate highlights.
  --   -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
  -- incremental_selection = {
  --   enable = false,
  --   keymaps = {
  --     init_selection = "gnn", -- set to `false` to disable one of the mappings
  --     node_incremental = "grn",
  --     scope_incremental = "grc",
  --     node_decremental = "grm",
  --   },
  -- },
  -- JoosepAlviste/nvim-ts-context-commentstring
  -- context_commentstring = {
  --   enable = true
  -- },
  -- windwp/nvim-ts-autotag 
  -- DEPRECATED! REMOVED IN 1.0.0
  -- call setup instead like every other plugin
  -- autotag = {
  --   enable = true,
  -- },
  -- nvim-treesitter/nvim-treesitter-refactor
  -- refactor = {
  --   highlight_definitions = {
  --     enable = false,
  --     -- Set to false if you have an `updatetime` of ~100.
  --     clear_on_cursor_move = false,
  --   },
  --   highlight_current_scope = { enable = false },
  --   smart_rename = {
  --     enable = false,
  --     keymaps = {
  --       smart_rename = "grr",
  --     },
  --   },
  --   navigation = {
  --     enable = false,
  --     keymaps = {
  --       goto_definition = "gnd",
  --       list_definitions = "gnD",
  --       list_definitions_toc = "gO",
  --       goto_next_usage = "<a-*>",
  --       goto_previous_usage = "<a-#>",
  --     },
  --   },
  -- },
  -- p00f/nvim-ts-rainbow
  -- rainbow = {
  --   enable = true,
  --   -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
  --   extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
  --   max_file_lines = 20000, -- Do not enable for files with more than n lines, int
  --   -- colors = {}, -- table of hex strings
  --   -- termcolors = {} -- table of colour name strings
  -- },
  -- nvim-treesitter/playground
  -- playground = {
  --   enable = false,
  --   disable = {},
  --   updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
  --   persist_queries = false, -- Whether the query persists across vim sessions
  --   keybindings = {
  --     toggle_query_editor = 'o',
  --     toggle_hl_groups = 'i',
  --     toggle_injected_languages = 't',
  --     toggle_anonymous_nodes = 'a',
  --     toggle_language_display = 'I',
  --     focus_language = 'f',
  --     unfocus_language = 'F',
  --     update = 'R',
  --     goto_node = '<cr>',
  --     show_help = '?',
  --   },
  -- },
  -- query_linter = {
  --   enable = false,
  --   use_virtual_text = true,
  --   -- "BufWrite", 
  --   lint_events = {"CursorHold"},
  -- },
  -- theHamsta/nvim-treesitter-pairs
  -- pairs = {
  --   enable = true,
  --   disable = {},
  --   highlight_pair_events = {"CursorMoved"}, -- e.g. {"CursorMoved"}, -- when to highlight the pairs, use {} to deactivate highlighting
  --   highlight_self = false, -- whether to highlight also the part of the pair under cursor (or only the partner)
  --   goto_right_end = false, -- whether to go to the end of the right partner or the beginning
  --   -- fallback_cmd_normal = "call matchit#Match_wrapper('',1,'n')", -- What command to issue when we can't find a pair (e.g. "normal! %")
  --   keymaps = {
  --     goto_partner = "<leader>%",
  --     delete_balanced = "X",
  --   },
  --   delete_balanced = {
  --     only_on_first_char = false, -- whether to trigger balanced delete when on first character of a pair
  --     fallback_cmd_normal = nil, -- fallback command when no pair found, can be nil
  --     longest_partner = false, -- whether to delete the longest or the shortest pair when multiple found.
  --                              -- E.g. whether to delete the angle bracket or whole tag in  <pair> </pair>
  --   }
  -- },
}

-- folke/twilight.nvim
-- require("twilight").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
-- }
-- nvim-treesitter/nvim-treesitter-context
-- require'treesitter-context'.setup{
--   enable = false, -- Enable this plugin (Can be enabled/disabled later via commands)
--   max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
--   trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
--   min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
--   patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
--     -- For all filetypes
--     -- Note that setting an entry here replaces all other patterns for this entry.
--     -- By setting the 'default' entry below, you can control which nodes you want to
--     -- appear in the context window.
--     default = {
--       'class',
--       'function',
--       'method',
--       'for',
--       'while',
--       'if',
--       'switch',
--       'case',
--       'interface',
--       'struct',
--       'enum',
--     },
--     -- Patterns for specific filetypes
--     -- If a pattern is missing, *open a PR* so everyone can benefit.
--     tex = {
--       'chapter',
--       'section',
--       'subsection',
--       'subsubsection',
--     },
--     haskell = {
--       'adt'
--     },
--     rust = {
--       'impl_item',

--     },
--     terraform = {
--       'block',
--       'object_elem',
--       'attribute',
--     },
--     scala = {
--       'object_definition',
--     },
--     vhdl = {
--       'process_statement',
--       'architecture_body',
--       'entity_declaration',
--     },
--     markdown = {
--       'section',
--     },
--     elixir = {
--       'anonymous_function',
--       'arguments',
--       'block',
--       'do_block',
--       'list',
--       'map',
--       'tuple',
--       'quoted_content',
--     },
--     json = {
--       'pair',
--     },
--     typescript = {
--       'export_statement',
--     },
--     yaml = {
--       'block_mapping_pair',
--     },
--   },
--   exact_patterns = {
--     -- Example for a specific filetype with Lua patterns
--     -- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
--     -- exactly match "impl_item" only)
--     -- rust = true,
--   },

--   -- [!] The options below are exposed but shouldn't require your attention,
--   --     you can safely ignore them.

--   zindex = 20, -- The Z-index of the context window
--   mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
--   -- Separator between context and content. Should be a single character string, like '-'.
--   -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
--   separator = nil,
-- }

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

-- presence.nvim (Discord Presence)
-- The setup config table shows all available config options with their default values:
require("presence"):setup({
    -- General options
    auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    neovim_image_text   = "My hands hurts 😭 😭", -- Text displayed when hovered over the Neovim image
    main_image          = "file",                   -- Main image display (either "neovim" or "file")
    -- client_id           = "793271441293967371",       -- Use your own Discord application client id (not recommended)
    log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    enable_line_number  = true,                       -- Displays the current line number instead of the current project
    blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    buttons             = false,                      -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
    file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
    show_time           = true,                       -- Show the timer

    -- Rich Presence text options
    -- editing_text        = "Editing %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    -- file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    -- git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    -- plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    -- reading_text        = "Reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    -- workspace_text      = "Working on %s",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    -- line_number_text    = "Line %s out of %s",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)

    editing_text        = "Editing some file",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text  = "Browsing",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text        = "Reading text",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "Working on project",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    line_number_text    = "Line %s out of %s",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
})

-- codestats lua
-- require('codestats').setup {
--     username = nil, -- needed to fetch profile data
--     base_url = 'https://codestats.net', -- codestats.net base url
--     api_key = nil, -- API key
--     send_on_exit = true,  -- send xp on nvim exit
--     send_on_timer = true,  -- send xp on timer
--     timer_interval = 60000,  -- timer interval in milliseconds (minimum 1000ms to prevent DDoSing codestat.net servers)
--     curl_timeout = 5,  -- curl request timeout in seconds
-- }

-- NvChad fork of colorizer, show css colors
require("colorizer").setup {
   filetypes = { "*" },
   user_default_options = {
     RGB = true, -- #RGB hex codes
     RRGGBB = true, -- #RRGGBB hex codes
     names = true, -- "Name" codes like Blue or blue
     names_opts = { -- options for mutating/filtering names.
       lowercase = true, -- name:lower(), highlight `blue` and `red`
       camelcase = false, -- name, highlight `Blue` and `Red`
       uppercase = true, -- name:upper(), highlight `BLUE` and `RED`
       strip_digits = false, -- ignore names with digits,
       -- highlight `blue` and `red`, but not `blue3` and `red4`
     },
     RRGGBBAA = true, -- #RRGGBBAA hex codes
     AARRGGBB = true, -- 0xAARRGGBB hex codes
     rgb_fn = true, -- CSS rgb() and rgba() functions
     hsl_fn = true, -- CSS hsl() and hsla() functions
     css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
     css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
     -- Available modes for `mode`: foreground, background,  virtualtext
     mode = "background", -- Set the display mode.
     -- Available methods are false / true / "normal" / "lsp" / "both"
     -- True is same as normal
     tailwind = "both", -- Enable tailwind colors
     -- parsers can contain values used in |user_default_options|
     sass = { enable = true, parsers = { }, }, -- Enable sass colors
     -- virtualtext = "■",
     -- update color values even if buffer is not focused
     -- example use: cmp_menu, cmp_docs
     always_update = false
   },
   -- all the sub-options of filetypes apply to buftypes
   buftypes = {},
   user_commands = false, -- Enable all or some usercommands
}

-- Outline
require("outline").setup({
  outline_window = {
    show_numbers = true,
    show_relative_numbers = true,
  },
  outline_items = {
    show_symbol_lineno = true,
  },
})

require('nvim-ts-autotag').setup({
  opts = {
    enable_close = true, -- Auto close tags
    enable_rename = true, -- Auto rename pairs of tags
    enable_close_on_slash = true -- Auto close on trailing </
  },
})
