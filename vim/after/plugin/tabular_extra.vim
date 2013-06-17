if !exists(':Tabularize')
  finish " Give up here; the Tabular plugin musn't have been loaded
endif 

let s:save_cpo = &cpo
set cpo&vim

AddTabularPattern! colon /:\zs
AddTabularPattern! commas /,\zs/l0l1

nmap <leader>t<bar> :Tabularize /<bar><CR>
nmap <leader>ts: :Tabularize colon<CR>
nmap <leader>ts, :Tabularize commas<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
