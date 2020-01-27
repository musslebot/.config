* Install Brew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

* Set up zsh
```
ln -s ~/Git/.config/.zshrc ~/.zshrc
mkdir -p ~/.zsh
```

* Set up git
```
ln -s ~/Git/.config/git/.gitconfig ~/.gitconfig
ln -s ~/Git/.config/git/git-completion.zsh ~/.zsh/git-completion.zsh
```

* Download iTerm2
```
curl -o ~/Downloads/iterm.zip -L https://iterm2.com/downloads/stable/latest
```
Unzip and move to Applications
Open and set preferences custom folder to `~/Git/.config/iterm`

* Install NeoVim
```
brew install neovim eslint pylint yamllint
pip3 install pynvim

ln -s ~/Git/.config/vim/.vimrc ~/.vimrc
mkdir -p ~/.config/nvim
ln -s ~/Git/.config/vim/init.vim ~/.config/nvim/init.vim
```
