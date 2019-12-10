* Install Brew
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

* Set up git completetion
```
ln -s ~/Git/.config/.git-completion.bash ~/.git-completion.bash
```

* Set up bash
```
ln -s ~/Git/.config/.bashrc ~/.bashrc
```
Add the following to `~/.bash_profile`:
```
# The next line allows pipenv to source
[[ -f ~/.bashrc ]] && source ~/.bashrc
```

* Install MacVim
https://github.com/macvim-dev/macvim/releases

* Setup MacVim
```
ln -s ~/Git/.config/vim/.vimrc ~/.vimrc
ln -s ~/Git/.config/vim/.gvimrc ~/.gvimrc
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe/
./install.py --ts-completer
```
