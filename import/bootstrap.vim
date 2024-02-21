vim9script
#-----------------------------

if empty(glob('~/.vim/autoload/plug.vim'))
	system("curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
	if v:shell_error != 0
		echoerr "vim-plug install failed"
	else
		autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif
endif
