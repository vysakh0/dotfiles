""""""""""""""""""""""
"Numbers vim toggle
nnoremap <F9> :NumbersToggle<CR>

let g:deoplete#enable_at_startup = 1

"
"Necomplete + Neo snippets key-mappings.

"
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
let g:neosnippet#enable_snipmate_compatibility = 1

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
nmap <Leader>e gaip


let g:AutoPairsShortcutToggle = '<C-Home>'

let g:syntastic_javascript_checkers = ['eslint']
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

set noshowmode
set noruler
set laststatus=0
set noshowcmd
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

nnoremap <f3> :tabe %:p:h<cr>
"Fzf
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
nnoremap <space><space>  :FZF!<CR>
nnoremap <space>g  :GitFiles!<CR>
nnoremap <space>f  :Files<space>
nnoremap <space>b  :Buffers!<CR>
nnoremap <space>ag  :Ag!<space>
nnoremap <space>m  :History!<cr>
nnoremap <space>;  :Marks<cr>
" mru
nnoremap <space>h  :History/<cr>
nnoremap <space>/  :Lines!<cr>

nnoremap <space>c  :Commits!<cr>
nnoremap <space>l  :BCommits!<cr>
nnoremap <space>t  :BTags<cr>

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
let g:jsx_ext_required = 0

augroup elixir
    nnoremap K :call Exdoc()<CR>

    function! s:Opendoc(query)
        silent! execute 'botright new'
        call termopen('elixir -pa "_build/**/**/ebin" -e "require IEx.Helpers; IEx.Helpers.h '.a:query.'"')
        execute 'nnoremap <buffer> q :bd!<cr>'
    endfunction
    command! -nargs=1 ExDoc call s:Opendoc(<f-args>)
    nnoremap <leader>de :ExDoc <space>
    autocmd!
    " bits stolen from alchemist-vim and slightly modified
    function! Exdoc(...)
      let query = ''
      if empty(a:000)
          let query = Lookup_name_under_cursor()
      else
          let query = a:000[0]
      endif
      silent! execute 'botright new'
      call termopen('elixir -pa "_build/**/**/ebin" -e "require IEx.Helpers; IEx.Helpers.h '.query.'"')
      execute 'nnoremap <buffer> q :bd!<cr>'
    endfunction

    function! Lookup_name_under_cursor()
        let module_func_match = '[A-Za-z0-9\._?!]\+'
        let before_cursor = strpart(getline('.'), 0, col('.'))
        let after_cursor = strpart(getline('.'), col('.'))
        let elixir_erlang_module_func_match = ':\?' . module_func_match
        let before_match = matchlist(before_cursor, elixir_erlang_module_func_match . '$')
        let after_match = matchlist(after_cursor, '^' . module_func_match)
        let query = ''
        let before = ''
        if len(before_match) > 0
            let before = before_match[0]
        endif
        let after = ''
        if len(after_match) > 0
            let after = after_match[0]
        endif
        if before =~ '\.$'
            "case before = List.Chars. after = to_char_list
            let query = substitute(before, '[.]$', '', '')
        elseif after =~ '^\.'
            "case before = List.Chars  after = .to_char_list
            let query = before
        elseif after =~ '.*\.'
            "case before = OptionParse after = r.parse
            "case before = Mix.Shel    after = l.IO.cmd
            let up_to_dot = matchlist(after, '\([A-Za-z0-9_]\+\)\.')
            let query = before . up_to_dot[1]
        else
            let query = before . after
        endif
        return query
    endfunction
augroup END
