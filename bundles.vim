set nocompatible
filetype off

" Vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"Hmm, I started to use vunble, when rm rfed my .vim folder once, so I switched
"to Vundle and made my dotfiles ;)
Bundle 'gmarik/vundle'

"I am not using this, I switch to tmux instead to see git log using tig or use
"git flow
Bundle 'tpope/vim-fugitive.git'

"This is one of the best plugin from tpope, especially when used visual mode
":)
Bundle 'tpope/vim-surround.git'

"Unite.vim does the job but still got comfortable with ctrlp
"Bundle 'kien/ctrlp.vim.git'
"That was my old comment, unite vim is just super awesome :)

"Tried setting this up, but some error when uploading, if it worked
"it would be really nice
Bundle 'vim-scripts/Gist.vim'

"For python projects this is very handy, in most of ther projects is, it is
"not, but let it be there
"Bundle 'majutsushi/tagbar'

"I use this once in a file, really handy
Bundle 'mileszs/ack.vim'

"I use this more often :D even now ;)
Bundle 'scrooloose/nerdcommenter'

"NerdTree is pretty much a habit now, to create,edit/destroy is the best thing
"abt it
Bundle "scrooloose/nerdtree"

"Probably this has a less use, when i need to algin things up
"Bundle 'godlygeek/tabular.git'



" Colorschemes
Bundle 'altercation/vim-colors-solarized.git'
"Bundle 'nelstrom/vim-mac-classic-theme.git'
"Bundle 'nelstrom/vim-blackboard.git'

" Ruby enhancements
"Bundle 'tpope/vim-bundler.git'

"If you are a rubyist you would need this endwise plugin ;)
Bundle 'tpope/vim-endwise.git'

"I don't know how useful, need to explore more both rails, rake vim
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake.git'

"Once i read the docs of vim-ruby, i find its use especially vim or vam cmds
Bundle 'vim-ruby/vim-ruby'
Bundle 'Keithbsmiley/rspec.vim'

" Markdown
Bundle 'tpope/vim-markdown.git'
Bundle 'nelstrom/vim-markdown-folding.git'

"Snipmates - yup you need all these stuffs ;)
Bundle 'honza/vim-snippets'

"Tried this ultisnips for making it play nice with ycm, but like vim-snippets,
"i.e what i need
"Bundle "SirVer/ultisnips"

"Autocompletion with you complete me, conflicting with vim-snippets though and
"i am not using this much, so i don need this :/
"Bundle "Valloric/YouCompleteMe"

"Nice recent plugin to have
Bundle "myusuf3/numbers.vim"


"Tile management- hmm, using it a lot
Bundle "spolu/dwm.vim"

"Mimicking some Sublime's feature, nice feature should use more often

Bundle "terryma/vim-multiple-cursors"

"For latex
Bundle "jcf/vim-latex"

"for Ruby instant output as command, does not work sometime in some file
Bundle "t9md/vim-ruby-xmpfilter"

Bundle "ervandew/supertab"

"Needed if you are using marks too often
Bundle "kshenoy/vim-signature"

"The mother of all plugin :D
Bundle "Shougo/unite.vim"

"I am using this while writing commit messages for models ;) nice use though
Bundle "dhruvasagar/vim-table-mode"

"This is a savior when editing goes whack :D
Bundle "mbbill/undotree"

"This is better than powerline plugin :)
Bundle "bling/vim-airline"

"Really handy when to do delele set of lines, otherwise easymotion does the
"job
Bundle "myusuf3/numbers.vim"
"Bundle "sjbach/lusty"

"Need easy motion desperately :D
Bundle "Lokaltog/vim-easymotion"

"people see this tagbar on steroids lets see :)

Bundle "Shougo/unite-outline"

Bundle "mhinz/vim-startify"
"not sure how i missed this plugin, it was there in my old config
Bundle "scrooloose/syntastic"

" Unite needs vimproc for certain searches
Bundle 'Shougo/vimproc'

Bundle 'christoomey/vim-tmux-navigator'

Bundle 'othree/html5.vim'

Bundle 'Yggdroot/indentLine'

"Not comfortable with youcompleteme
Bundle 'Shougo/neocomplete'

"This is a deadly combination
Bundle 'Shougo/neosnippet'


Bundle 'Rip-Rip/clang_complete'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"

Bundle 'godlygeek/tabular'
