set nocompatible
filetype off

" Vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on

" General enhancements
"Bundle 'tpope/vim-characterize.git'
"Bundle 'tpope/vim-commentary.git'
"Bundle 'tpope/vim-dispatch.git'
"Bundle 'tpope/vim-eunuch.git'
Bundle 'tpope/vim-fugitive.git'
"Bundle 'tpope/vim-ragtag.git'
"Bundle 'tpope/vim-repeat.git'
"Bundle 'tpope/vim-scriptease.git'
"Bundle 'tpope/vim-sensible.git'
"Bundle 'tpope/vim-sleuth.git'
Bundle 'tpope/vim-surround.git'
"Bundle 'tpope/vim-tbone.git'
"Bundle 'tpope/vim-unimpaired.git'
"Bundle 'nelstrom/vim-visual-star-search'
"Bundle 'nelstrom/vim-docopen'
"Bundle 'vim-scripts/prettyprint.vim.git'

Bundle 'kien/ctrlp.vim.git'
Bundle 'vim-scripts/Gist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle "scrooloose/nerdtree"


Bundle 'pangloss/vim-javascript.git'
Bundle 'godlygeek/tabular.git'
"Bundle 'kongo2002/vim-space.git'
Bundle 'kana/vim-vspec.git'
"Bundle 'nelstrom/vim-qargs.git'
"Bundle 'vim-scripts/vimwiki.git'


" Custom textobjects
"Bundle 'kana/vim-textobj-user.git'
"Bundle 'kana/vim-textobj-entire.git'
"Bundle 'kana/vim-textobj-indent.git'
"Bundle 'kana/vim-textobj-syntax.git'
"Bundle 'kana/vim-textobj-line.git'
"Bundle 'nelstrom/vim-textobj-rubyblock.git'

" Colorschemes
Bundle 'altercation/vim-colors-solarized.git'
"Bundle 'nelstrom/vim-mac-classic-theme.git'
"Bundle 'nelstrom/vim-blackboard.git'

" Ruby enhancements
Bundle 'tpope/vim-bundler.git'
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake.git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Keithbsmiley/rspec.vim'

" Markdown
Bundle 'tpope/vim-markdown.git'
Bundle 'nelstrom/vim-markdown-folding.git'

"Snipmates
Bundle 'Rip-Rip/clang_complete'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'honza/vim-snippets'
Bundle "garbas/vim-snipmate"

"Autocompletion with you complete me
"Bundle "Valloric/YouCompleteMe"


"Tile management
Bundle "spolu/dwm.vim"

"Mimicking some Sublime's feature

Bundle "terryma/vim-multiple-cursors"

"For latex
Bundle "jcf/vim-latex"

"for Ruby instant output as command
Bundle "t9md/vim-ruby-xmpfilter"
