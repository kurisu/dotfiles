# Circumvent https://github.com/direnv/direnv/issues/210
#
shell_session_update() { :; }

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -d $HOME/.bash.d ]; then
  for i in $(ls $HOME/.bash.d/*.sh 2>/dev/null); do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi


# added by Anaconda3 4.2.0 installer
export PATH="/Users/kai/anaconda3/bin:$PATH"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
