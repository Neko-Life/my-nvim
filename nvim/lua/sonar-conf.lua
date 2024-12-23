-- You can install the sonarlint-ls by extracting it from the sonarlint-vscode plugin.
-- Head over to the releases and download the latest *.vsix file. As it is a ZIP file, it contains the sonarlint-ls.jar and all available analyzers.
-- Extract these JAR files from the extension/server/ and extension/analyzers/, and configure sonarlint.nvim according to the setup section.
require('sonarlint').setup({
  server = {
    cmd = {
      'java', '-jar', '/home/neko-chan/sonarlint/extension/server/sonarlint-ls.jar',
      -- Ensure that sonarlint-language-server uses stdio channel
      '-stdio',
      '-analyzers',
      '/home/neko-chan/sonarlint/extension/analyzers/csharpenterprise.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonarcfamily.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonarcsharp.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonargo.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonarhtml.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonariac.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonarjava.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonarjavasymbolicexecution.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonarjs.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonarlintomnisharp.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonarphp.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonarpython.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonartext.jar',
      '/home/neko-chan/sonarlint/extension/analyzers/sonarxml.jar',
    },
    -- All settings are optional
    settings = {
      -- The default for sonarlint is {}, this is just an example
      sonarlint = {
        -- rules = {
        --   ['typescript:S101'] = { level = 'on', parameters = { format = '^[A-Z][a-zA-Z0-9]*$' } },
        --   ['typescript:S103'] = { level = 'on', parameters = { maximumLineLength = 180 } },
        --   ['typescript:S106'] = { level = 'on' },
        --   ['typescript:S107'] = { level = 'on', parameters = { maximumFunctionParameters = 7 } }
        -- }
      }
    }
  },
  filetypes = {
    -- Tested and working
    -- 'python',
    'cpp',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'html',
    -- Requires nvim-jdtls, otherwise an error message will be printed
    -- 'java',
  }
})

