" PLUGIN CONFIGURATIONS
"""""""""""""""""""""""
"Numbers vim toggle
nnoremap <F9> :NumbersToggle<CR>
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#data_directory='~/.vim/.cache/neocomplete'

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


"multi-cursor
let g:multi_cursor_next_key='<C-m>'
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

"Fugitive related key mappings
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>ga :Git add -A<CR>
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
"this setting would show the history of a file, really nice to see how your
"file transforms"
nnoremap <silent> <leader>gV :Gitv!<CR>

""Tabular pluugin
"nmap <Leader>a& :Tabularize /&<CR>
"vmap <Leader>a& :Tabularize /&<CR>
"nmap <Leader>a= :Tabularize /=<CR>
"vmap <Leader>a= :Tabularize /=<CR>
"nmap <Leader>a: :Tabularize /:<CR>
"vmap <Leader>a: :Tabularize /:<CR>
"nmap <Leader>a:: :Tabularize /:\zs<CR>
"vmap <Leader>a:: :Tabularize /:\zs<CR>
"nmap <Leader>a, :Tabularize /,<CR>
"vmap <Leader>a, :Tabularize /,<CR>
"nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
"vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
"

vnoremap <silent> <Leader>a :EasyAlign<Enter>

" U1nite
nmap <space> [unite]
nnoremap [unite] <nop>
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <silent> [unite]t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:! file_mru<cr>
nnoremap <silent> [unite]vv :<C-u>Unite -start-insert -no-split -buffer-name=file_vcs file/vcs<CR>
nnoremap <silent> [unite]f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <silent> [unite]r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <silent> [unite]op :<C-u>Unite -no-split -buffer-name=outline  -auto-preview outline<cr>
nnoremap <silent> [unite]oo :<C-u>Unite -no-split -quick-match -buffer-name=outline  outline<cr>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yank    history/yank<cr>
nnoremap <silent> [unite]e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>
nnoremap <silent> [unite]ft :Unite file_rec/async -default-action=tabopen<cr>
nnoremap <silent> [unite]fs :Unite file_rec/async -default-action=split<cr>
nnoremap <silent> [unite]fv :Unite file_rec/async -default-action=vsplit<cr>
nnoremap <silent> [unite]fp :Unite -no-split -buffer-name=files -default-action=preview file<cr>
nnoremap <silent> [unite]fa :Unite -no-split -start-insert -auto-preview file_rec/async <cr>
nnoremap <silent> [unite]fc :Unite file_rec/async<cr>
let g:unite_source_rec_async_command = 'ack -f --nofilter'

"Syntastic customization
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'


"Rails vim
"Create command abbreviations that auto corrects ;)
nnoremap <leader>rf :find<space>
nnoremap <leader>gg :e Gemfile<CR>
nnoremap <leader>rr :e config/routes.rb<CR>
nnoremap <leader>rv :Rview<space>
nnoremap <leader>rl :Rlayout<space>
nnoremap <leader>rj :Rjavascript<space>
nnoremap <leader>rs :Rstylesheet<space>
nnoremap <leader>rc :Rcontroller<space>
nnoremap <leader>rg :Rgenerate<space>
nnoremap <leader>rm :Rmodel<space>

"Vim dispatch, change compiler for language specific"
"autocmd FileType ruby let b:dispatch = 'ruby %'
autocmd FileType ruby let b:dispatch = 'ruby %'
autocmd FileType python let b:dispatch = 'python %'
autocmd FileType java let b:dispatch = 'javac %'
autocmd FileType javascript let b:dispatch = 'node %'

nnoremap <leader>d :Dispatch<CR>
nnoremap <space>d :Dispatch bundle exec rspec %<CR>
nnoremap <leader>bc :Dispatch bundle check <CR>
nnoremap <leader>bi :Dispatch bundle install<CR>

"nmap <silent> <leader>bi :so MYVIMRC<CR>:NeoBundleInstall <CR>

"Vim signify"
let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'
let g:signify_mapping_toggle_highlight = '<leader>gh'

"emmet zencoding
let g:user_emmet_settings = {
            \  'php' : {
            \    'extends' : 'html',
            \    'filters' : 'c',
            \  },
            \  'xml' : {
            \    'extends' : 'html',
            \  },
            \  'haml' : {
            \    'extends' : 'html',
            \  },
            \  'eruby' : {
            \    'extends' : 'html',
            \  },
            \}

"Vimshell
nnoremap <space><space>s :VimShell<CR>
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1


let g:vimfiler_as_default_explorer = 1
let g:vimfiler_enable_clipboard = 0
let g:vimfiler_safe_mode_by_default = 0
nnoremap <silent>   <leader>f   :VimFiler<CR>
nnoremap <silent>   <leader>vt   :VimFilerTab<CR>
nnoremap<silent> <F3> :<C-u>VimFilerExplorer<CR>

nnoremap <leader>np :Nyancat<CR>

"Matchit ftw
runtime! macros/matchit.vim
au Filetype css,javascript
            \ let b:match_words = &matchpairs


"Startify related settings"
nnoremap <leader><leader>s :Startify<CR>
let g:startify_files_number        = 8
let g:startify_session_persistence = 1
let g:startify_session_autoload    = 1
let g:startify_enable_special      = 0
let g:startify_files_number        = 5
let g:startify_change_to_dir       = 0


let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ $VIMRUNTIME .'/doc',
            \ 'bundle/.*/doc',
            \ ]

let g:startify_bookmarks = [
            \ '~/dotfiles/vim/vimrc',
            \ ]

let g:startify_custom_header =
            \ map(split(system('tips | cowsay -f apt I will show you how great i am'), '\n'), '"   ". v:val') + ['']

hi StartifyBracket ctermfg=240
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyFooter  ctermfg=240
hi StartifyFile    ctermfg=111


"Ember vim mappings
nnoremap er :Eroute<space>
nnoremap em :Emodel<space>
nnoremap ec :Econtroller<space>
nnoremap et :Etemplate<space>
nnoremap es :Estylesheet<space>
nnoremap eg :Egrunt<space>
nnoremap ear :Eapp router<CR>
nnoremap eaa :Eapp app<CR>

let g:airline#extensions#tabline#enabled = 1

nnoremap <Leader>z :LiteDFMToggle<CR>:silent !tmux set status > /dev/null 2>&1<CR>:redraw!<CR>
