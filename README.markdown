THE DOTFILES
===========

#### Vim

Vim is my favorite text editor. This repo has the custom mappings, plugins etc I use, still making it more productive. [This a post i wrote about Vim](http://vysakh0.github.io/learning-vim-steering-hacking/)

##### Directory structure

 - vimrc (has all the custom settings and configuration)
 - auto_config.vim (all the configuration settings related to specific file extensions)
 - bundles.vim (all the plugins that can be installed using vundle plugin)
 - plugin_config.vim (plugin configuration, mappings)

#### Zsh

I have used very less of my own customization(except for zsh/aliases.zsh) and used oh-my-zsh, its plugin.  [This is a small post I wrote about zsh](vysakh0.github.io/flying-start-with-zsh-shell/)

##### Files and dirs

- zshrc (plugins of oh-my-zsh that i use)
- aliases.zsh (aliases that are not in oh-my-zsh, but suitable to workflow)

#### Todo

You should have Vim  and zsh already installed. You need lua, ruby, python support to your Vim to install the plugins of this repo.

##### Vim installation

**Install lua**
```bash
curl -R -O http://www.lua.org/ftp/lua-5.2.2.tar.gz
tar zxf lua-5.2.2.tar.gz
cd lua-5.2.2
make linux test
sudo cp src/lua /usr/local/bin/lua
sudo cp -r src /usr/local/include/
```

**Install Ruby using rbenv**

```bash
# installing rbenv
curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile
source ~/.profile

#if want to use Rails after installing Ruby, please install these dependencies otherwise skip
sudo apt-get install libreadline-dev libssl-dev zlib1g-dev build-essential bison openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev

# installing ruby using rbenv
CONFIGURE_OPTS="--with-readline-dir=/usr/include/readline" rbenv install 2.2.0p0 #if the above dependencies are installed

or

rbenv install 2.2.0p0 #when dependencies are not installed

# setting global ruby version

rbenv global 2.2.0p0
```

Python should be available in most distros.

**Install latest Vim**

```bash
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar -xvjf  vim-7.4.tar.bz2
cd vim74

./configure --with-features=huge \
    --enable-rubyinterp \
    --enable-pythoninterp \
    --enable-perlinterp \
    --with-lua-prefix=/usr/local --enable-luainterp \
    --enable-gui=gtk2 --enable-cscope --prefix=/usr

make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install
```

#### Install Zsh and oh-my-zsh

``` bash
sudo apt-get update && sudo apt-get install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh
```
logout or Reboot

### Install the settings from the repo

```bash
git clone git@github.com:vysakh0/dotfiles.git

# VIM
ln -s dotfiles/vim/vimrc ~/.vimrc

# install Vim-Plug which is a plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins using vim-plug
vim +PlugInstall

#zsh
ln -s dotfiles/zsh/zshrc ~/.zshrc
```
