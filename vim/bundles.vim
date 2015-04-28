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
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-projectile'
NeoBundle 'tpope/vim-repeat'

"Shougo's awesomeness

NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/unite-outline"
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'linux' : 'make',
      \    },
      \ }
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundleFetch 'Shougo/neobundle.vim'

"Addons to unite
NeoBundle 'tsukkee/unite-tag'
NeoBundle "osyo-manga/unite-quickfix"


NeoBundle 'mustache/vim-mustache-handlebars'
"Scoorloose"
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle "scrooloose/syntastic"

NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle "myusuf3/numbers.vim"

NeoBundle 'nelstrom/vim-markdown-folding.git'

NeoBundle 'elzr/vim-json'

NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'Keithbsmiley/rspec.vim'
NeoBundle 'thoughtbot/vim-rspec'

NeoBundle "mhinz/vim-startify"
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'honza/vim-snippets'

NeoBundle "tomtom/tlib_vim"
NeoBundle "dhruvasagar/vim-table-mode"
"NeoBundle 'godlygeek/tabular'
NeoBundle 'junegunn/vim-easy-align'
"NeoBundle 'Raimondi/delimitMate'
NeoBundle "jiangmiao/auto-pairs"
NeoBundle 'Yggdroot/indentLine'


NeoBundle "kshenoy/vim-signature"

" for git
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

NeoBundle 'bling/vim-airline'

NeoBundle 'koron/nyancat-vim'
NeoBundle 'bilalq/lite-dfm'

NeoBundle 'justinmk/vim-sneak'
NeoBundle 'nelstrom/vim-textobj-rubyblock'
NeoBundle 'kana/vim-textobj-user'

NeoBundle 'sickill/vim-pasta'
"NeoBundle "wookiehangover/jshint.vim"
NeoBundle 'wellle/targets.vim'
NeoBundle 'chriskempson/base16'

NeoBundle 'wting/rust.vim'
NeoBundle 'osyo-manga/vim-monster'
NeoBundle 'osyo-manga/vim-over'
NeoBundle 'gcmt/wildfire.vim'
NeoBundle 'AndrewRadev/splitjoin.vim'

NeoBundle 'terryma/vim-multiple-cursors'

"NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'wellle/tmux-complete.vim'
NeoBundle 'vim-scripts/vim-auto-save'
NeoBundle 'elixir-lang/vim-elixir'
