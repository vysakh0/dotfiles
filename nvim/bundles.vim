call plug#begin('~/.vim/plugged')

"Tpope's awesomeness

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
"Plug 'tpope/vim-rails'
"Plug 'tpope/vim-rake'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-projectile'
Plug 'tpope/vim-repeat'

""Junegunn's awesomeness
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
"Plug 'junegunn/goyo.vim'

"Shougo's awesomeness

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'


"Scoorloose"
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'

"Osyo-manga
Plug 'osyo-manga/vim-over'
Plug 'osyo-manga/vim-anzu'

Plug 'Lokaltog/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'myusuf3/numbers.vim'
Plug 'mustache/vim-mustache-handlebars'

"Plug 'vim-ruby/vim-ruby'
"Plug 'Keithbsmiley/rspec.vim'

Plug 'mhinz/vim-startify'
Plug 'altercation/vim-colors-solarized'
Plug 'honza/vim-snippets'

Plug 'tomtom/tlib_vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'

Plug 'sickill/vim-pasta'

Plug 'kshenoy/vim-signature'

" for git
Plug 'gregsexton/gitv'
Plug 'mhinz/vim-signify'

Plug 'othree/html5.vim'
Plug 'ap/vim-css-color'
"color picker"
Plug 'pangloss/vim-javascript'
"Plug 'kchmck/vim-coffee-script'

Plug 'bling/vim-airline'

"Plug 'koron/nyancat-vim'

Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user'

"Plug "wookiehangover/jshint.vim"
Plug 'wellle/targets.vim'
Plug 'chriskempson/base16'

"Plug 'wting/rust.vim'
Plug 'gcmt/wildfire.vim'
Plug 'AndrewRadev/splitjoin.vim'

Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/seoul256.vim'
"Plug 'wellle/tmux-complete.vim'
Plug 'elixir-lang/vim-elixir'

"Plug 'dahu/vim-asciidoc'
"Plug 'dahu/Asif'
"Plug 'dahu/vimple'

Plug 'haya14busa/incsearch.vim'

"Plug 'pgdouyon/vim-accio'
Plug 'benekastah/neomake'
Plug 'janko-m/vim-test'
"Plug 'lambdatoast/elm.vim'

Plug 'airodactyl/neovim-ranger'
Plug 'justinj/vim-react-snippets'
Plug 'mxw/vim-jsx'

" Should checkout
"Plug 'sheerun/vim-polyglot'
"Plug 'cohama/lexima.vim'
"
Plug 'pmsorhaindo/syntastic-local-eslint.vim'
call plug#end()
