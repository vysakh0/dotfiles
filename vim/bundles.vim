if has('vim_starting')
    set nocompatible               " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
"Tpope's awesomeness

NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'tpope/vim-endwise.git'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-rake.git'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-markdown.git'

"Shougo's awesomeness

NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/unite-outline"
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundleFetch 'Shougo/neobundle.vim'

"Scoorloose"
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle "scrooloose/syntastic"

NeoBundle "Lokaltog/vim-easymotion"
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle "myusuf3/numbers.vim"

"NeoBundle 'mattn/webapi-vim'
"NeoBundle 'vim-scripts/Gist.vim'
NeoBundle 'nelstrom/vim-markdown-folding.git'

NeoBundle 'elzr/vim-json'

NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Keithbsmiley/rspec.vim'

NeoBundle "mhinz/vim-startify"
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'honza/vim-snippets'
NeoBundle "spolu/dwm.vim"

NeoBundle "jcf/vim-latex"

NeoBundle "tomtom/tlib_vim"
NeoBundle "dhruvasagar/vim-table-mode"
"NeoBundle 'godlygeek/tabular'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Yggdroot/indentLine'

NeoBundle "kshenoy/vim-signature"
NeoBundle 'gregsexton/gitv'
NeoBundle 'm2mdas/unite-file-vcs'
NeoBundle 'mhinz/vim-signify'

NeoBundle 'othree/html5.vim'
NeoBundle 'ap/vim-css-color'
"color picker"
NeoBundle 'Rykka/colorv.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mattn/emmet-vim'

"NeoBundle 'itchyny/lightline.vim'
NeoBundle 'bling/vim-airline'

NeoBundle 'koron/nyancat-vim'

"NeoBundle 'dsawardekar/ember.vim'
"NeoBundle 'dsawardekar/portkey'
NeoBundle 'nono/vim-handlebars'
"NeoBundle 'matze/vim-move'

"NeoBundle 'chrisbra/csv.vim'
"
NeoBundle 'Zuckonit/vim-airline-tomato'

NeoBundle 'tpope/vim-vinegar'

NeoBundle 'bilalq/lite-dfm'

NeoBundle 'junegunn/goyo.vim'
NeoBundle 'terryma/vim-multiple-cursors'
