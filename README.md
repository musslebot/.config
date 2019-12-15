* Install Brew
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

* Set up git completetion
```
ln -s ~/Git/.config/.git-completion.bash ~/.git-completion.bash
```

* Set up bash
```
ln -s ~/Git/.config/.bashrc ~/.bashrc
cat <<EOT >> ~/.bash_profile

# The next line allows pipenv to source
[[ -f ~/.bashrc ]] && source ~/.bashrc
EOT
```

* Install NeoVim
brew install neovim

* Setup NeoVim
```
ln -s ~/Git/.config/vim/.vimrc ~/.vimrc
mkdir -p ~/.config/nvim
ln -s ~/Git/.config/vim/init.vim ~/.config/nvim/init.vim
```
