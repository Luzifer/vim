" after/plugin/tabular_commands.vim
" Provides extra :Tabularize commands

if !exists(':Tabularize')
  finish " Give up here; the Tabular plugin musn't have been loaded
endif

" Make line wrapping possible by resetting the 'cpo' option, first saving it
let s:save_cpo = &cpo
set cpo&vim

" Use on ~/.ssh/config: %Tabularize ssh_config
AddTabularPattern! ssh_config /^[ ]*[^ ]*\zs /l2l0

" Restore the saved value of 'cpo'
let &cpo = s:save_cpo
unlet s:save_cpo
