""""""""""""""""""""""
" statusline

nnoremap <f3> :tabe %:p:h<cr>
"Fzf
let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4 '
let g:fzf_layout = { 'window': 'call FloatingFZF()' }
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
let g:fzf_preview_window = 'right:70%'
autocmd VimEnter * command! -bang -nargs=? GFiles call fzf#vim#gitfiles(<q-args>, {'options': '--preview-window right:70%'}, <bang>0)
"autocmd VimEnter * command! -bang -nargs=? GFiles call fzf#vim#gitfiles(<q-args>, {'options': '--preview 'file {}' --preview-window down:1:noborder '}, <bang>0)

nnoremap <space><space>  :FZF<CR>
nnoremap <space>g  :GFiles!?<CR>
nnoremap <space>f  :Files!<space>
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

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(10)
  let width = float2nr(80)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
let g:jsx_ext_required = 0

let g:floaterm_keymap_new = '<Leader>fn'
let g:floaterm_keymap_toggle = '<Leader>ft'
let g:floaterm_keymap_prev = '<Leader>fp'
let g:floaterm_position = 'bottomright'

let g:vim_jsx_pretty_colorful_config = 1

"Git status
set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}


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

"coc snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
