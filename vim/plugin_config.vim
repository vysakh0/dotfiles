"r PLUGIN CONFIGURATIONS
"""""""""""""""""""""""
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

" U1nite
nmap <space> [unite]
nnoremap [unite] <nop>
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
let g:unite_source_grep_default_opts = "-iRHn"
            \ . " --exclude='*.svn*'"
            \ . " --exclude='*.svn*'"
            \ . " --exclude='*.log*'"
            \ . " --exclude='*tmp*'"
            \ . " --exclude-dir='**/tmp'"
            \ . " --exclude-dir='CVS'"
            \ . " --exclude-dir='.svn'"
            \ . " --exclude-dir='.git'"
            \ . " --exclude-dir='node_modules'"
let g:unite_source_rec_async_command = 'ack -f --nofilter'
nnoremap <silent> [unite]tt :Unite -start-insert -no-split tag <cr>
nnoremap <silent> [unite]tf :Unite -start-insert -no-split tag/file <cr>
nnoremap <silent> [unite]vv :<C-u>Unite -start-insert -no-split -buffer-name=file_vcs file/vcs<CR>
nnoremap <silent> [unite]f :<C-u>Unite -start-insert file_rec<cr>
nnoremap <silent> [unite]r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <silent> [unite]op :<C-u>Unite -no-split -buffer-name=outline  -auto-preview outline<cr>
nnoremap <silent> [unite]oo :<C-u>Unite -no-split -quick-match -buffer-name=outline  outline<cr>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yank    history/yank<cr>
nnoremap <silent> [unite]s :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [unite]e :<C-u>Unite -quick-match buffer<cr>
nnoremap <silent> [unite]ft :Unite file_rec/async -default-action=tabopen<cr>
nnoremap <silent> [unite]fs :Unite file_rec/async -default-action=split<cr>
nnoremap <silent> [unite]fv :Unite file_rec/async -default-action=vsplit<cr>
nnoremap <silent> [unite]fp :Unite -no-split -buffer-name=files -default-action=preview file<cr>
nnoremap <silent> [unite]fa :Unite -no-split -start-insert -auto-preview file_rec/async <cr>
nnoremap <silent> [unite]fc :Unite file_rec/async<cr>

let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.git = {
    \ 'description' : '            gestionar repositorios git
        \                            ⌘ [espacio]g',
    \}
let g:unite_source_menu_menus.git.command_candidates = [
    \['▷ tig                                                        ⌘ ,gt',
        \'normal ,gt'],
    \['▷ git status       (Fugitive)                                ⌘ ,gs',
        \'Gstatus'],
    \['▷ git diff         (Fugitive)                                ⌘ ,gd',
        \'Gdiff'],
    \['▷ git commit       (Fugitive)                                ⌘ ,gc',
        \'Gcommit'],
    \['▷ git log          (Gitv)                                    ⌘ ,gl',
        \'Gitv'],
    \['▷ git history      (Gitv)                                    ⌘ ,gv',
        \'Gitv!'],
    \['▷ git blame        (Fugitive)                                ⌘ ,gb',
        \'Gblame'],
    \['▷ git stage        (Fugitive)                                ⌘ ,gw',
        \'Gwrite'],
    \['▷ git checkout     (Fugitive)                                ⌘ ,go',
        \'Gread'],
    \['▷ git rm           (Fugitive)                                ⌘ ,gr',
        \'Gremove'],
    \['▷ git mv           (Fugitive)                                ⌘ ,gm',
        \'exe "Git mv " input("destino: ")'],
    \['▷ git push         (Fugitive, salida por buffer)             ⌘ ,gp',
        \'Git! push'],
    \['▷ git pull         (Fugitive, salida por buffer)             ⌘ ,gP',
        \'Git! pull'],
    \['▷ git prompt       (Fugitive, salida por buffer)             ⌘ ,gi',
        \'exe "Git! " input("comando git: ")'],
    \['▷ git cd           (Fugitive)',
        \'Gcd'],
    \]
nnoremap <silent>[unite]g :Unite -silent -start-insert menu:git<CR>

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
nnoremap [eunuch]f :Find<space>
nnoremap [eunuch]l :Locate<space>
nnoremap [eunuch]s :SudoWrite<CR>
nnoremap [eunuch]e :SudoEdit<CR>
nnoremap [eunuch]m :Move <space>
nnoremap [eunuch]c :Chmod<space>

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
nnoremap <leader>rq :Rtask<space>
nnoremap <leader>rv :Rview<space>
nnoremap <leader>rl :Rlayout<space>
nnoremap <leader>rj :Rjavascript<space>
nnoremap <leader>ro :Rserializer<space>
nnoremap <leader>ru :Rspec serializers/
nnoremap <leader>re :Renvironment<space>
nnoremap <leader>rt :Rspec<space>
nnoremap <leader>rf :Rfixtures<space>
nnoremap <leader>rh :Rschema<space>
nnoremap <leader>rs :Rstylesheet<space>
nnoremap <leader>rc :Rcontroller<space>
nnoremap <leader>rp :Rpreview<space>
nnoremap <leader>rn :Rmailer<space>
nnoremap <leader>ri :Rinitializer<space>

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

nnoremap <leader>rm :Rmodel<space>
nnoremap <leader>rec :Rgenerate ember:controller<space>
nnoremap <leader>reb :Rgenerate ember:bootstrap -n App<CR>
nnoremap <leader>rem :Rgenerate ember:model<space>
nnoremap <leader>rer :Rgenerate ember:route<space>
nnoremap <leader>ret :Rgenerate ember:template<space>
nnoremap <leader>res :Rgenerate ember:resource<space>

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
"Ember projections using ember-cli
nnoremap <leader>em :Emodel <space>
nnoremap <leader>ea :Eapp <space>
nnoremap <leader>ec :Econtroller <space>
nnoremap <leader>eo :Ecomponent<space>
nnoremap <leader>es :Estylesheet<space>
nnoremap <leader>ev :Eview <space>
nnoremap <leader>eu :e app/router.js<CR>
nnoremap <space>eb :e Brocfile.js<CR>
nnoremap <space>ep :e package.json<CR>
nnoremap <leader>er :Eroute <space>
nnoremap <leader>et :Etemplate <space>

"Ember projections using rails.vim
nmap <leader>a [ember-rails]
nnoremap [ember-rails]em :Ejmodel <space>
nnoremap [ember-rails]ec :Ejcontroller <space>
nnoremap [ember-rails]eo :Ejcomponent<space>
nnoremap [ember-rails]ev :Ejview <space>
nnoremap [ember-rails]er :Ejroute <space>
nnoremap [ember-rails]et :Etemplate <space>

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
nnoremap <leader>bl :Dispatch bundle install --local<CR>

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


let g:vimfiler_as_default_explorer = 1
let g:vimfiler_enable_clipboard = 0
let g:vimfiler_safe_mode_by_default = 0
nmap <leader>f [vfiler]
nnoremap [vfiler] <nop>
nnoremap <silent>   [vfiler]f   :VimFiler<CR>
nnoremap <silent>   [vfiler]t   :VimFilerTab<CR>
nnoremap <silent>   [vfiler]e   :VimFilerExplorer<CR>
nnoremap<silent> <F3> :<C-u>VimFilerExplorer<CR>
nnoremap [vfiler]j :VimFilerCreate app/assets/javascripts<CR>
nnoremap [vfiler]a :VimFilerCreate app<CR>
nnoremap [vfiler]s :VimFilerCreate spec<CR>
nnoremap [vfiler]c :VimFilerCreate config<CR>
nnoremap [vfiler]b :VimFilerBufferDir<CR>
nnoremap [vfiler]m :VimFilerCreate db/migrate<CR>

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
"nnoremap er :Eroute<space>
"nnoremap em :Emodel<space>
"nnoremap ec :Econtroller<space>
"nnoremap et :Etemplate<space>
"nnoremap es :Estylesheet<space>
"nnoremap eg :Egrunt<space>
"nnoremap ear :Eapp router<CR>
"nnoremap eaa :Eapp app<CR>

let g:airline#extensions#tabline#enabled = 1

nnoremap <Leader>z :LiteDFMToggle<CR>:silent !tmux set status > /dev/null 2>&1<CR>:redraw!<CR>
"let g:github_access_token = ""
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

