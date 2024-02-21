vim9script

var lspOpts = {
  aleSupport: false,
  autoComplete: false,
  autoHighlight: false,
  autoHighlightDiags: true,
  autoPopulateDiags: false,
  completionMatcher: 'case',
  completionMatcherValue: 1,
  diagSignErrorText: 'E>',
  diagSignHintText: 'H>',
  diagSignInfoText: 'I>',
  diagSignWarningText: 'W>',
  echoSignature: false,
  hideDisabledCodeActions: false,
  highlightDiagInline: true,
  hoverInPreview: false,
  ignoreMissingServer: false,
  keepFocusInDiags: true,
  keepFocusInReferences: true,
  completionTextEdit: false,
  diagVirtualTextAlign: 'above',
  diagVirtualTextWrap: 'default',
  noNewlineInCompletion: false,
  omniComplete: true,
  outlineOnRight: false,
  outlineWinSize: 30,
  semanticHighlight: true,
  showDiagInBalloon: true,
  showDiagInPopup: true,
  showDiagOnStatusLine: false,
  showDiagWithSign: true,
  showDiagWithVirtualText: true,
  showInlayHints: true,
  showSignature: true,
  snippetSupport: false,
  ultisnipsSupport: false,
  useBufferCompletion: false,
  usePopupInCodeAction: true,
  useQuickfixForLocations: false,
  vsnipSupport: false,
  bufferCompletionTimeout: 100,
  customCompletionKinds: false,
  completionKinds: {},
  filterCompletionDuplicates: false,
}


var lspServers = [
  # Clangd language server
  {
    name: 'clang',
    filetype: ['c', 'cpp'],
    path: 'clangd-mp-17',
    args: ['--background-index'],
  },

  # Rust language server
#   {
#     name: 'rustlang',
#     filetype: ['rust'],
#     path: '/usr/local/bin/rust-analyzer',
#     args: [],
#     syncInit: true,
#   },

# Go language server
  {
    name: 'golang',
    filetype: ['go', 'gomod'],
    path: 'gopls',
    args: ['serve'],
    syncInit: true,
    initializationOptions: {
    semanticTokens: true,
    },
  },

  # Javascript/Typescript language server
  {
    name: 'typescriptlang',
    filetype: ['javascript', 'typescript'],
    path: 'typescript-language-server',
    args: ['--stdio'],
  },
]

augroup Lsp
  au!
  autocmd User LspSetup call LspOptionsSet(lspOpts)
  autocmd User LspSetup call LspAddServer(lspServers)
  autocmd User LspAttached {
    setlocal keywordprg=:LspHover
    setlocal tagfunc=lsp#lsp#TagFunc
    setlocal formatexpr=lsp#lsp#FormatExpr()
    nnoremap <buffer> <LocalLeader>f <Cmd>LspFormat<CR>
  }
augroup END
