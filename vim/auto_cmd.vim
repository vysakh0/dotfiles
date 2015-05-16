" Save when losing focus
set autowriteall " Auto-save files when switching buffers or leaving vim.
au FocusLost * silent! :wa
au TabLeave * silent! :wa

" on every change of text in the file, autosaves
set updatetime=1000
"autocmd CursorHoldI * silent w
"autocmd TextChanged,TextChangedI <buffer> silent! :wa
autocmd CursorHold * update
autocmd CursorHold,CursorHoldI * update

let g:mustache_abbreviations = 1
" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

"remove whitespace on writing
autocmd FileType * autocmd BufWritePre * :%s/\s\+$//e

" Ruby Configurations
"""""""""""""""""""""
autocmd filetype ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal colorcolumn=80
autocmd filetype ruby iabbr rmi require 'minitest/autorun'
autocmd filetype ruby iabbr rmp require 'minitest/pride'
autocmd FileType ruby setlocal colorcolumn=80
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby =  '[^. *\t]\.\w*\|\h\w*::'

"" HTML configurations
""""""""""""""""""""""
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2

"" Python configurations
""""""""""""""""""""""""
autocmd FileType python setlocal shiftwidth=4 expandtab tabstop=4 softtabstop=4
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType python set omnifunc=pythoncomplete#Complete

"" Coffeescript configurations
""""""""""""""""""""""""""""""
"au BufNewFile,BufReadPost *.coffee setlocal foldmethod=indent
au BufNewFile,BufReadPost *.coffee setlocal shiftwidth=2 expandtab

" Javascript configurations
"""""""""""""""""""""""""""
au BufNewFile,BufReadPost *.js setl sw=2 sts=2 et
autocmd FileType javascript setlocal colorcolumn=80

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" change filetypes
au BufNewFile,BufRead *.erb set filetype=eruby.html
au BufNewFile,BufRead *.es6 set filetype=javascript
