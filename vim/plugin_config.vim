""""""""""""""""""""""
"Numbers vim toggle
nnoremap <F9> :NumbersToggle<CR>
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#data_directory='~/.vim/.cache/neocomplete'

"Necomplete + Neo snippets key-mappings.
"
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
let g:neosnippet#enable_snipmate_compatibility = 1

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

if has('conceal')
    set conceallevel=2 concealcursor=i

endif
vnoremap <silent> <Leader>a :EasyAlign<Enter>
nmap ga <Plug>(EasyAlign)
nmap <space>e gaip

"Fugitive related key mappings
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>ga :Git add -A<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>go :Gread<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gp :Gpush<space>
nnoremap <silent> <leader>gP :Gpull<space>
nnoremap <silent> <leader>gi :exe "Git " input("enter a git command : ")<CR>
nnoremap <silent> <leader>gm :Gmerge<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gr :Gremove<CR>
autocmd FileType gitcommit nmap <buffer> U :Git checkout -- <C-r><C-g><CR>
autocmd BufReadPost fugitive://* set bufhidden=delete

"For gitv plugin
nnoremap <silent> <leader>gl :Gitv<CR>
"this setting would show the history of a file, really nice to see how your
"file transforms"
nnoremap <silent> <leader>gv :Gitv!<CR>



"Enunch
nmap <leader>u [eunuch]
nnoremap [eunuch] <nop>

nnoremap [eunuch]u :Unlink<CR>
nnoremap [eunuch]r :Remove<CR>
nnoremap [eunuch]d :Mkdir<space>
nnoremap [eunuch]m :Move<space>
"change the name
nnoremap [eunuch]c :Rename<space>
nnoremap [eunuch]w :Wall<CR>
" wall writes all files

nnoremap [eunuch]s :SudoWrite<CR>
nnoremap [eunuch]e :SudoEdit<CR>
nnoremap [eunuch]h :Chmod<space>
nnoremap [eunuch]f :Find<space>
nnoremap [eunuch]l :Locate<space>

"Syntastic customization
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'
let g:syntastic_ruby_checkers          = ['mri', 'rubocop', 'reek']

"let g:syntastic_javascript_checkers = ['standard']
"let g:syntastic_javascript_checkers = ['jscs -c']


"Rails vim
"Create command abbreviations that auto corrects ;)
nnoremap <leader>rf :find<space>
nnoremap <leader>gg :e Gemfile<CR>
nnoremap <leader>rr :e config/routes.rb<CR>
nnoremap <leader>rq :REtask<space>
nnoremap <leader>rv :REview<space>
nnoremap <leader>rl :RElayout<space>
nnoremap <leader>rj :REjavascript<space>
nnoremap <leader>ro :REserializer<space>
nnoremap <leader>ru :REspec serializers/
nnoremap <leader>re :REenvironment<space>
nnoremap <leader>rt :REspec<space>
nnoremap <leader>rf :REfixtures<space>
nnoremap <leader>rhh :REschema<space>
nnoremap <leader>rhe :REschema<CR>
nnoremap <leader>rs :REstylesheet<space>
nnoremap <leader>rc :REcontroller<space>
nnoremap <leader>rp :REpreview<space>
nnoremap <leader>rn :REmailer<space>
nnoremap <leader>ri :REinitializer<space>

nnoremap <space>a :A<CR>
nnoremap <space>r :R<CR>
nnoremap <space>av :AV<CR>
nnoremap <space>rv :RV<CR>
nnoremap <space>r :R<CR>
nnoremap <space>rv :RV<CR>

"Rake
nnoremap <leader>rkk :Rake<space>
nnoremap <leader>rkm :Rake db:migrate<CR>
nnoremap <leader>rkr :Rake db:rollback<CR>
nnoremap <leader>rkd :Rake db:drop<CR>

"Rails generate vim
nnoremap <leader>rg :Rgenerate <space>
nnoremap <leader>rgc :Rgenerate controller<space>
nnoremap <leader>rgm :Rgenerate model<space>
nnoremap <leader>rgd :Rgenerate migration<space>
nnoremap <leader>rgr :Rgenerate resource<space>
nnoremap <leader>rgs :Rgenerate scaffold<space>
nnoremap <leader>rgt :Rgenerate task<space>
nnoremap <leader>rgl :Rgenerate mailer<space>
"Destroy
nnoremap <leader>rdc :Rdestroy controller<space>
nnoremap <leader>rdm :Rdestroy model<space>
nnoremap <leader>rdd :Rdestroy migration<space>
nnoremap <leader>rdr :Rdestroy resource<space>
nnoremap <leader>rdt :Rdestroy task<space>

nnoremap <leader>rm :REmodel<space>

let g:rails_projections = {
            \ "spec/mailers/previews/*_preview.rb": {
            \ "command": "preview",
            \ "alternate": "app/mailers/%s.rb",
            \ "template": "class %SPreview < ActionMailer::Preview\nend"
            \ },
            \
            \ "app/serializers/*_serializer.rb": {
            \ "command": "serializer",
            \ "affinity": "model",
            \ "test": "spec/serializers/%s_spec.rb",
            \ "related": "app/models/%s.rb",
            \ "template": "class %SSerializer < ActiveModel::Serializer\nend"
            \ }
            \ }

" Projections for simple ruby project
let g:projectionist_heuristics = {
            \ "lib|spec": {
            \ "lib/*.rb": {
            \     "type": "lib",
            \     "alternate": "spec/{}_spec.rb"
            \ }}}

" Ember projections using ember-cli
let g:projectionist_heuristics = {
            \ "Brocfile.js": {
            \ "tests/acceptance/*.js": {
            \     "type": "lib",
            \     "alternate": "test/{}_test.exs"
            \ }
            \ }
            \ }
nnoremap <leader>eu :e app/router.js<CR>

"Common key strokes for ruby, elixi proj
nnoremap <leader>el :Elib <space>
nnoremap <leader>ed :Etest<space>

"Common keystrokes for ember-cli, phoenix
nnoremap <leader>eea :Eacceptance<space>
nnoremap <leader>eeu :Eunit<space>
nnoremap <leader>em :Emodel <space>
nnoremap <leader>ec :Ecomponent<space>
nnoremap <leader>ea :Econtroller<space>
nnoremap <leader>es :Estylesheet<space>
nnoremap <leader>ev :Eview <space>
nnoremap <leader>er :Eroute <space>
nnoremap <leader>et :Etemplate <space>

"phoenix projections
nnoremap <leader>per :e web/router.ex<CR>

" Projections for elixir project
let g:projectionist_heuristics = {
            \ "mix.exs": {
            \ "lib/*.ex": {
            \     "type": "lib",
            \     "alternate": "test/{}_test.exs",
            \     "template": "defmodule {camelcase|capitalize|colons} do\nend"
            \ },
            \ "test/*_test.exs": {
            \     "type": "test",
            \     "alternate": "lib/{}.ex",
            \     "template": "defmodule {camelcase|capitalize|colons}Test do\n  use ExUnit.Case\nend"
            \ }
            \ }
            \ }
nnoremap <leader>mx :e mix.exs<cr>


"Vim dispatch, change compiler for language specific"
"autocmd FileType ruby let b:dispatch = 'ruby %'
autocmd FileType ruby let b:dispatch = 'ruby %'
autocmd FileType python let b:dispatch = 'python %'
autocmd FileType java let b:dispatch = 'javac %'
autocmd FileType javascript let b:dispatch = 'node %'

nnoremap <leader>d :Dispatch<CR>
" to see the output of the quick fix window
nnoremap <leader>c :Copen<CR>
"nnoremap <space>d :Dispatch bundle exec rspec %<CR>
nnoremap <leader>br :Dispatch ruby %<CR>

function! FileName()
    let l:file_name = bufname("%")
    let l:line_num  = line(".")
    let l:total     = ( l:file_name.":".l:line_num )
    :exe "Dispatch mix test ".total
endfunction

nnoremap <leader>mc :call FileName()<CR>
nnoremap <leader>mf :Dispatch mix test %<CR>
nnoremap <leader>mt :Dispatch mix test<CR>

nnoremap <leader>bc :Dispatch bundle check <CR>
nnoremap <leader>bi :Dispatch bundle install<CR>
nnoremap <leader>bl :Dispatch bundle install --local<CR>

" vim-rspec
let g:rspec_command = "Dispatch rspec {spec}"

map <space>dd :call RunCurrentSpecFile()<CR>
map <space>ds :call RunNearestSpec()<CR>
map <space>dl :call RunLastSpec()<CR>
map <space>da :call RunAllSpecs()<CR>

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

hi StartifyBracket ctermfg=240
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyFooter  ctermfg=240
hi StartifyFile    ctermfg=111

let g:airline#extensions#tabline#enabled = 1

nnoremap <Leader>z :Goyo<CR>
let g:goyo_width = 115
function! s:goyo_enter()
  silent !tmux set status off
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter
autocmd! User GoyoLeave
autocmd  User GoyoEnter nested call <SID>goyo_enter()
autocmd  User GoyoLeave nested call <SID>goyo_leave()
"let g:github_access_token = ""
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

"vim-monster for ruby autocomplete
" Use neocomplete.vim
let g:neocomplete#force_omni_input_patterns = {
            \   'ruby' : '[^. *\t]\.\|\h\w*::',
            \}


" wildfire
map <SPACE>w <Plug>(wildfire-fuel)
map <SPACE>m <Plug>(wildfire-water)
let g:wildfire_objects = {
            \ "*" : ["i'", 'i"', "i)", "i]", "i}"]
            \ }

cal wildfire#triggers#Add("<ENTER>", {
            \ "html,xml,erb,hbs" : ["at", "it"],
            \ })

""Osyo-manga"
"OverCommandLine plugin
"
function! VisualFindAndReplace(param)
    :exe "OverCommandLine ". a:param
    :w
endfunction
function! VisualFindAndReplaceWithSelection(param) range
    :exe "'<,'>OverCommandLine ". a:param
    :w
endfunction
nnoremap <leader>s :call VisualFindAndReplace('%s/')<CR>
xnoremap <leader>s :call VisualFindAndReplaceWithSelection('s/')<CR>
nnoremap <leader>S :call VisualFindAndReplace('%S/')<CR>
xnoremap <leader>S :call VisualFindAndReplaceWithSelection('S/')<CR>
"search and replace word under cursor
nnoremap <leader>sw :call VisualFindAndReplace('%S/<C-R><C-W>/')<CR>
xnoremap <leader>sw :call VisualFindAndReplaceWithSelection('S/<C-R><C-W>/')<CR>

"anzu
" mapping
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
" statusline
set statusline=%{anzu#search_status()}

nmap <Space>/ <Plug>(hopping-start)

"Fzf
nnoremap <leader>o :e ~/dotfiles/vim/fzf.vim<CR>
silent so ~/dotfiles/vim/fzf.vim
nnoremap <space><space>  :FZF<CR>
nnoremap <space>ap  :FZF app/<CR>
nnoremap <space>ag  :Ag<space>
nnoremap <space>f  :FZF!<CR>
nnoremap <space>g  :FZF<space>
nnoremap <space>m  :FZFMru<cr>
nnoremap <space>t  :FZFTags<cr>
nnoremap <space>o  :FZFTagFile<cr>
nnoremap <space>s  :FZFLines<cr>
