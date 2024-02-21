vim9script
#-----------------------------

g:fzf_history_dir = '~/.vim/.state/fzf-history'


def Config()
  var config_path = '~/.vim'->expand()
  var config_file_list = $'fd . {config_path} -tf'->systemlist()
  var relative_config_file_list = config_file_list->map((_, val) => {
    return val->strpart(config_path->strlen() + 1)
  })
  g:fzf#run(g:fzf#wrap({
    source: relative_config_file_list,
    sink: (line) => {
      execute $'tabedit {config_path}/{line}'
    },
    options: [ '--prompt', 'Open Config File: ', ],
  }))
enddef

command -bar Config Config()

