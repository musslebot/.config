* Install Brew
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

* Set up git
```
ln -s ~/Git/.config/git/.gitconfig ~/.gitconfig
ln -s ~/Git/.config/git/.git-completion.bash ~/.git-completion.bash
```

* Set up bash
```
ln -s ~/Git/.config/.bashrc ~/.bashrc
cat <<EOT >> ~/.bash_profile

# The next line allows pipenv to source
[[ -f ~/.bashrc ]] && source ~/.bashrc
EOT
```

* Download iTerm2
```
curl -o ~/Downloads/iterm.zip -L https://iterm2.com/downloads/stable/latest
```
Unzip and move to Applications
Open and set preferences custom folder to ~/Git/.config/iterm

* Install NeoVim
```
brew install neovim eslint pylint yamllint
pip3 install pynvim

ln -s ~/Git/.config/vim/.vimrc ~/.vimrc
mkdir -p ~/.config/nvim
ln -s ~/Git/.config/vim/init.vim ~/.config/nvim/init.vim
```
