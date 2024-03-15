vim9script

augroup highlight
  au!
  au VimEnter,ColorScheme * {
    highlight link Terminal Normal

    highlight link InfoPopup Normal

    highlight SpellBad cterm=undercurl
    highlight SpellCap cterm=undercurl
    highlight SpellRare cterm=undercurl
    highlight SpellLocal cterm=undercurl
  }
augroup END
