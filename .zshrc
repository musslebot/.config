alias ll='ls -alF'
alias vim='nvim'
alias python='python3'

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

fpath=(~/.zsh $fpath)

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/$(whoami)/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/$(whoami)/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/$(whoami)/google-cloud-sdk/completion.zsh.inc'; fi
