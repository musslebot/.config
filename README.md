* Install Brew
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

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
