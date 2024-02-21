vim9script

# Mouse support
set mouse=a
set ttymouse=sgr
set balloonevalterm

# Styled and colored underline support
&t_AU = "\e[58:5:%dm"
&t_8u = "\e[58:2:%lu:%lu:%lum"
&t_Us = "\e[4:2m"
&t_Cs = "\e[4:3m"
&t_ds = "\e[4:4m"
&t_Ds = "\e[4:5m"
&t_Ce = "\e[4:0m"

# Strikethrough
&t_Ts = "\e[9m"
&t_Te = "\e[29m"

# Truecolor support
&t_8f = "\e[38:2:%lu:%lu:%lum"
&t_8b = "\e[48:2:%lu:%lu:%lum"
&t_RF = "\e]10;?\e\\"
&t_RB = "\e]11;?\e\\"

# Bracketed paste
&t_BE = "\e[?2004h"
&t_BD = "\e[?2004l"
&t_PS = "\e[200~"
&t_PE = "\e[201~"

# Cursor control
&t_RC = "\e[?12$p"
&t_SH = "\e[%d q"
&t_RS = "\eP$q q\e\\"
&t_SI = "\e[5 q"
&t_SR = "\e[3 q"
&t_EI = "\e[1 q"
&t_VS = "\e[?12l"

# Focus tracking
&t_fe = "\e[?1004h"
&t_fd = "\e[?1004l"
execute "set <FocusGained>=\<Esc>[I"
execute "set <FocusLost>=\<Esc>[O"

# Window title
&t_ST = "\e[22;2t"
&t_RT = "\e[23;2t"

# vim hardcodes background color erase even if the terminfo file does
# not contain bce. This causes incorrect background rendering when
# using a color theme with a background color in terminals such as
# kitty that do not support background color erase.
&t_ut = ''
