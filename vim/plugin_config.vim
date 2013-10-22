" PLUGIN CONFIGURATIONS
"""""""""""""""""""""""

"NERDTree toggle
noremap <F3> :NERDTreeToggle<CR>

"Numbers vim toggle
nnoremap <F9> :NumbersToggle<CR>

"Undotreetoggle
nnoremap <F8> :UndotreeToggle<cr>

"mult cursor  plugin
let g:multi_cursor_next_key='<C-m>'

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
cnoreabbrev rco Rco
cnoreabbrev rmo Rmo
cnoreabbrev rview Rview
cnoreabbrev rv Rview
cnoreabbrev rx Rextract

"Vim dispatch, change compiler for language specific"
"autocmd FileType ruby let b:dispatch = 'ruby %'
autocmd FileType ruby let b:dispatch = 'ruby %'
autocmd FileType python let b:dispatch = 'python %'
autocmd FileType java let b:dispatch = 'javac %'
autocmd FileType javascript let b:dispatch = 'node %'

nnoremap <leader>d :Dispatch<CR>
nnoremap <space>d :Dispatch rspec %<CR>

""Tslime "
"vmap <leader>t <Plug>SendSelectionToTmux
"nmap <leader>t <Plug>NormalModeSendToTmux
"nmap <leader>r <Plug>SetTmuxVars

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

let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

"Startify related settings"
let g:startify_bookmarks = [ '~/.vimrc', '~/dotfiles/plugin_config.vim' ]
let g:startify_session_autoload = 0
let g:startify_change_to_dir = 0

let g:vimfiler_as_default_explorer = 1
let g:vimfiler_enable_clipboard = 0
let g:vimfiler_safe_mode_by_default = 0
nnoremap <silent>   <leader>vf   :<C-u>VimFiler -find<CR>
nnoremap<silent> <leader>v   :<C-u>VimFilerExplorer<CR>

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ }
      \ }

"vim move plugin"
let g:move_key_modifier = 'C'

let g:startify_custom_header = [
            \"                                          .'+,       ",
            \"                                         @#####,     ",
            \"                                        #######@     ",
            \"          VIM - Vi IMproved            .'++'+###     ",
            \"                                       ;'+'++##,    ",
            \"    Help poor children in Uganda!      +++#'++##,    ",
            \"                                       '+;;#'+#++    ",
            \"                                       +#'#+++#++    ",
            \"                                       ++++;+###.    ",
            \"                                       '#'+++##'     ",
            \"                                       ;:;++++#'     ",
            \"                                        ++++##+,     ",
            \"                    . .,:,:,`           #+##:.,,     ",
            \"          ``..,`.'#;@++++++++#+`       ;,#;.,::,:    ",
            \"    +'++:;'':;;+;,:+';VIM;;'++;      ,::,::,::,.    ",
            \"                  `+#+''';;'+##     .::,:,:,,,,,,   ",
            \"                   #'+#++':::+++     ,,,:,,,,,,:,;   ",
            \"                   '++#@+#+'++##   :,,:,:,,,,,,,,   ",
            \"                    ;#++:   #+++##  :,,:::,,,,,,,,   ",
            \"                    +'++#    `#;++#;::::,,,,,,,,,,   ",
            \"                    #++'#   :+#+'+@;::,,,,,,,,,,,   ",
            \"                    #++''+  .#++'+;::,,,,,,,,,,,,   ",
            \"                    ;@#++'+  @#++@:::,,,,,,,,,,,:   ",
            \"                       ##++'++;'##,:,,,,,,,,,,:,,'   ",
            \"                         #++'++##'::,,,,,,,,,,,,,:   ",
            \"                          ,#+'++':::,,,,,,,,,,:,.    ",
            \"                            @#'++#;:,,,,,,,,,,,,;    ",
            \"                             @+'+++::,,,,,,,,,:     ",
            \"                              #++'+#,,,,,,,:,:;     ",
            \"                              :'+++++#:,,,,,,,,      ",
            \"                              ::,##+++#.,,,::,,      ",
            \"                              ,::,##++'#:,,,,,`      ",
            \"                              '';;:,+#'':::,::       ",
            \"                             `:;;;';:,:::::,:        ",
            \"                             ;'';;;;:,:,:::::        ",
            \"                             '';;;;',:,:::+         ",
            \]"]

nnoremap <leader>np :Nyancat<CR>
