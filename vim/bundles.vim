call plug#begin('~/.vim/plugged')

"Tpope's awesomeness

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-projectile'
Plug 'tpope/vim-repeat'

"Shougo's awesomeness

Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
Plug 'Shougo/vimproc', { 'do': 'make' }
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neomru.vim'

"Addons to unite
Plug 'tsukkee/unite-tag'
Plug 'osyo-manga/unite-quickfix'


Plug 'mustache/vim-mustache-handlebars'
"Scoorloose"
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'

Plug 'Lokaltog/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'myusuf3/numbers.vim'

Plug 'elzr/vim-json'

Plug 'vim-ruby/vim-ruby'
Plug 'Keithbsmiley/rspec.vim'
Plug 'thoughtbot/vim-rspec'

Plug 'mhinz/vim-startify'
Plug 'altercation/vim-colors-solarized'
Plug 'honza/vim-snippets'

Plug 'tomtom/tlib_vim'
Plug 'dhruvasagar/vim-table-mode'
"Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
"Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'

Plug 'sickill/vim-pasta'

Plug 'kshenoy/vim-signature'

" for git
Plug 'gregsexton/gitv'
Plug 'm2mdas/unite-file-vcs'
Plug 'mhinz/vim-signify'
"Plug 'godlygeek/csapprox'


Plug 'othree/html5.vim'
Plug 'ap/vim-css-color'
"color picker"
Plug 'Rykka/colorv.vim'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'

Plug 'bling/vim-airline'

Plug 'koron/nyancat-vim'
Plug 'junegunn/goyo.vim'

Plug 'justinmk/vim-sneak'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user'

"Plug "wookiehangover/jshint.vim"
Plug 'wellle/targets.vim'
Plug 'chriskempson/base16'

Plug 'wting/rust.vim'
"Plug 'osyo-manga/vim-monster'
Plug 'osyo-manga/vim-over'
Plug 'gcmt/wildfire.vim'
Plug 'AndrewRadev/splitjoin.vim'

Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/seoul256.vim'
Plug 'wellle/tmux-complete.vim'
Plug 'elixir-lang/vim-elixir'

"Plug 'vim-scripts/vim-auto-save'
"autosave fucks my paste intendation! :/
"
Plug 'dahu/vim-asciidoc'
Plug 'dahu/Asif'
Plug 'dahu/vimple'

call plug#end()
