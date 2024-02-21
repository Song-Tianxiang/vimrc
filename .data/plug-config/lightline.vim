vim9script

g:lightline = {
  colorscheme: 'gruvbox8',
#   colorscheme: 'zenburn',
  mode_map: {
    'n': 'N',
    'i': 'I',
    'R': 'R',
    'v': 'V',
    'V': 'VL',
    "\<C-v>": 'VB',
    'c': 'C',
    's': 'S',
    'S': 'SL',
    "\<C-s>": 'SB',
    't': 'T',
  },
  active: {
    left: [
      [ 'mode', 'paste' ],
      [ 'readonly', 'filename', 'modified' ],
    ],
    right: [
      [ 'position', ],
      [ 'filetype', ],
      [ 'lsp_diag', ],
    ]
  },
  component: {
    position: '%P:%L',
    filetype: '%{&ft != "" ? &ft : ""}',
    filetype_icon: '%{&ft != "" ? nerdfont#find() : ""} ',
    who: '%{$USER}',
  },
  component_function: {
    lsp_diag: 'LightlineDiag',
  },
}

def g:LightlineDiag(): string
  if !exists('*lsp#lsp#ErrorCount')
    return ''
  endif

  var diag = lsp#lsp#ErrorCount()

  var error = diag['Error'] != 0 ? $'E:{diag['Error']} ' : ''
  var warn = diag['Warn'] != 0 ? $'W:{diag['Warn']} ' : ''
  var info = diag['Info'] != 0 ? $'I:{diag['Info']} ' : ''
  var hint = diag['Hint'] != 0 ? $'H:{diag['Hint']}' : ''

  return error .. warn .. info .. hint
enddef


