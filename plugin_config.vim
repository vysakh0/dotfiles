
" Plugin configurations
"""""""""""""""""""""""
"NERDTree toggle
noremap <F3> :NERDTreeToggle<CR>

"Numbers vim toggle
nnoremap <F9> :NumbersToggle<CR>

"Undotreetoggle
nnoremap <F8> :UndotreeToggle<cr>

"mult cursor  plugin
let g:multi_cursor_next_key='<C-m>'

" This is not working in most case or has use, so lemme something else
nmap <buffer> <F7> <Plug>(xmpfilter-run)
xmap <buffer> <F7> <Plug>(xmpfilter-run)
imap <buffer> <F7> <Plug>(xmpfilter-run)

nmap <buffer> <F6> <Plug>(xmpfilter-mark)
xmap <buffer> <F6> <Plug>(xmpfilter-mark)
imap <buffer> <F6> <Plug>(xmpfilter-mark)

"Unite vim
"nnoremap <C-p> :U :nite file_rec<cr>
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"noremap <space>r :<C-u>Unite -start-insert file_rec<CR>
"nnoremap <space>a :Unite file_rec -auto-preview<cr>
"nnoremap <space>/ :Unite grep:.<cr>
"let g:unite_source_history_yank_enable = 1
"nnoremap <space>y :Unite history/yank<cr>
"nnoremap <space>s :Unite -quick-match buffer<cr>
"nnoremap <space>m :<C-u>Unite -start-insert file_mru<CR>

"Ulti
"let g:UltiSnipsExpandTrigger = '<c-l>'
"let g:UltiSnipsJumpForwardTrigger = '<c-j>'
"let g:UltiSnipsJumpBackwardTrigger = '<c-k>'

"Snipmates
":imap <C-J> <Plug>snipMateNextOrTrigger
":smap <C-J> <Plug>snipMateNextOrTrigger


"let g:EasyMotion_leader_key = '<Leader>'

" Necomplete + Neo snippets key-mappings.
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

imap <C-i>     <Plug>(neosnippet_expand_or_jump)
smap <C-i>     <Plug>(neosnippet_expand_or_jump)
xmap <C-i>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i

endif
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#data_directory='~/.vim/.cache/neocomplete'

"Fugitive related key mappings
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gr :Gremove<CR>
autocmd FileType gitcommit nmap <buffer> U :Git checkout -- <C-r><C-g><CR>
autocmd BufReadPost fugitive://* set bufhidden=delete

"For gitv plugin
nnoremap <silent> <leader>gv :Gitv<CR>
nnoremap <silent> <leader>gV :Gitv!<CR>

"Tabular pluugin
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>


"Unite related mappings
"call unite#filters#matcher_default#use(['matcher_fuzzy'])

"nmap <space> [unite]
"nnoremap [unite] <nop>

"nnoremap <silent> [unite]<space> :<C-u>Unite -toggle -auto-resize -buffer-name=mixed file_rec/async buffer file_mru bookmark<cr><c-u>
"nnoremap <silent> [unite]f :<C-u>Unite -toggle -auto-resize -buffer-name=files file_rec/async<cr><c-u>
"nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<cr>
"nnoremap <silent> [unite]r :<C-u>Unite -toggle -auto-resize file_mru<cr>
"nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
"nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer<cr>
"nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
"nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>
"nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>

""Unite outline, people say it is tagbar on steroids, not sure
nmap <space> [unite]
nnoremap [unite] <nop>
" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <silent> [unite]t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <silent> [unite]f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <silent> [unite]r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <silent> [unite]o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <silent> [unite]y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <silent> [unite]e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>
nnoremap <silent> [unite]ft :Unite file_rec/async -default-action=tabopen<cr>
nnoremap <silent> [unite]fs :Unite file_rec/async -default-action=split<cr>
nnoremap <silent> [unite]fv :Unite file_rec/async -default-action=vsplit<cr>
nnoremap <silent> [unite]fc :Unite file_rec/async<cr>



" Custom mappings for the unite buffer
  " Enable navigation with control-j and control-k in insert mode
"nnoremap <silent> [unite]o :<C-u>Unite -auto-resize -buffer-name=outline outline<cr>
"nnoremap <silent> [unite]o :<C-u>Unite -no-split -buffer-name=outline outline<cr>


"Syntastic customization
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'

