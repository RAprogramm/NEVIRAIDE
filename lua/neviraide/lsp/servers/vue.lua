return {
  capabilities = require('neviraide.lsp.capabilities'),
  flags = { debounce_text_changes = 150 },
  single_file_support = true,
  settings = {
    vue = {
      inlayHints = {
        inlineHandlerLeading = true,
        missingProps = true,
        optionsWrapper = true,
      },
    },
    volar = {
      codeLens = {
        references = true,
        pugTools = true,
        scriptSetupTools = true,
      },
    },
    typescript = {
      preferences = {
        importModuleSpecifier = 'non-relative',
      },
    },
  },
}
