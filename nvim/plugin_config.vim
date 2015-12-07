""""""""""""""""""""""
"Numbers vim toggle
nnoremap <F9> :NumbersToggle<CR>

let g:deoplete#enable_at_startup = 1

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
nnoremap <silent> <leader>gr :Git rebase -i HEAD~
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gp :Gpush<CR>
nnoremap <silent> <leader>gP :Gpull<CR>
nnoremap <silent> <leader>gi :exe "Git " input("enter a git command : ")<CR>
nnoremap <silent> <leader>gm :Gmerge<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
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

"Rails vim
"Create command abbreviations that auto corrects ;)
nnoremap <leader>rf :find<space>
nnoremap <leader>rr :e config/routes.rb<CR>
nnoremap <leader>rq :Etask<space>
nnoremap <leader>rv :Rview<space>
nnoremap <leader>rl :Elayout<space>
nnoremap <leader>rj :Ejavascript<space>
nnoremap <leader>ro :Eserializer<space>
nnoremap <leader>ru :Espec serializers/
nnoremap <leader>re :Eenvironment<space>
nnoremap <leader>rt :Espec<space>
nnoremap <leader>rf :Efixtures<space>
nnoremap <leader>rhh :Eschema<space>
nnoremap <leader>rhe :Eschema<CR>
nnoremap <leader>rs :Estylesheet<space>
nnoremap <leader>rc :Econtroller<space>
nnoremap <leader>rp :Epreview<space>
nnoremap <leader>rn :Emailer<space>
nnoremap <leader>ri :Einitializer<space>
nnoremap <leader>rx :Echannel<space>

nnoremap <space>a :A<CR>
nnoremap <space>av :AV<CR>
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

nnoremap <leader>rm :Emodel<space>

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
nnoremap <leader>eq :Etest<space>

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
            \     "template": "defmodule {camelcase|capitalize|dot} do\nend"
            \ },
            \ "test/*_test.exs": {
            \     "type": "test",
            \     "alternate": "lib/{}.ex",
            \     "template": "defmodule {camelcase|capitalize|dot}Test do\n  use ExUnit.Case\nend"
            \ }
            \ }
            \ }
nnoremap <leader>mx :e mix.exs<cr>
"Neomake
let g:neomake_javascript_enabled_makers = ['jscs']
autocmd! BufWritePost * Neomake

nnoremap <space>n :Neomake<CR>
" to see the output of the quick fix window
nnoremap <leader>co :copen<CR>

let test#strategy = "dispatch"
nmap <silent> <space>dd :TestNearest<CR>
nmap <silent> <space>df :TestFile<CR>
nmap <silent> <space>da :TestSuite<CR>
nmap <silent> <space>dl :TestLast<CR>
nmap <silent> <space>dv :TestVisit<CR>

"Vim signify"
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

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

"incsearch.vim
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

"nnoremap / /\v
"vnoremap / /\v
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
let g:hopping#keymapping = {
            \   "\<C-n>" : "<Over>(hopping-next)",
            \   "\<C-p>" : "<Over>(hopping-prev)",
            \   "\<C-u>" : "<Over>(scroll-u)",
            \   "\<C-d>" : "<Over>(scroll-d)",
            \}

nnoremap <f3> :tabe %:p:h<cr>
"Fzf
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
nnoremap <leader>o :e ~/dotfiles/vim/fzf.vim<CR>
silent so ~/dotfiles/vim/fzf.vim
nnoremap <space><space>  :FZF!<CR>
nnoremap <space>f  :FZF<CR>
nnoremap <space>o  :FZFTagFile<cr>
nnoremap <space>m  :FZFMru<cr>
nnoremap <space>ap  :FZF app/<CR>
nnoremap <space>ag  :Ag<space>
nnoremap <space>g  :FZF<space>
nnoremap <space>t  :FZFTags<cr>
nnoremap <space>s  :FZFLines<cr>
