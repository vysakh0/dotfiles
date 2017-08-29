THE DOTFILES
===========

#### Vim

Vim (Neovim) is my favorite text editor. This repo has the custom mappings, plugins etc I use,
still making it more productive. [This a post i wrote about Vim](http://vysakh0.github.io/learning-vim-steering-hacking/)

##### Directory structure

 - init (has all the custom settings and configuration)
 - auto_config.vim (all the configuration settings related to specific file extensions)
 - bundles.vim (all the plugins that can be installed using vundle plugin)
 - plugin_config.vim (plugin configuration, mappings)

#### Zsh

I have used very less of my own customization(except for zsh/aliases.zsh) and used oh-my-zsh, its plugin.
[This is a small post I wrote about zsh](vysakh0.github.io/flying-start-with-zsh-shell/)

##### Files and dirs

- zshrc (plugins of oh-my-zsh that i use)
- aliases.zsh (aliases that are not in oh-my-zsh, but suitable to workflow)


##### Other command line tools

- [fzf](https://github.com/junegunn/fzf) - Used for file searches
- [ranger](https://github.com/hut/ranger) - Used as file explorer


#### Neovim installation

```bash
git clone https://github.com/neovim/neovim
cd neovim
git checkout v0.1.4
make
sudo make install
```

For more or different installation, refer [neovim installation](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source)

#### Install Zsh and oh-my-zsh

``` bash
sudo apt-get update && sudo apt-get install zsh # for ubuntu
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh
```
logout or Reboot

### Install the settings from the repo

```bash
git clone git@github.com:vysakh0/dotfiles.git

# VIM
ln -s ~/dotfiles/nvim ~/.config/nvim

# install Vim-Plug which is a plugin manager
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins using vim-plug
nvim +PlugInstall

#zsh
ln -s dotfiles/zsh/zshrc ~/.zshrc

# tmux
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# ag (silver search)
ln -s ~/dotfiles/other-tools/agignore ~/.agignore
```

##### Support for other language plugins:

Neovim makes the support with language easier. Refer [this python support](https://github.com/neovim/python-client) which
one of the plugin in this repo (`deoplete`) uses.

Begin your code :boom: Bonne Chance :metal:
