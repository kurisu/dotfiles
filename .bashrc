
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/kai/.nvm/versions/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/kai/.nvm/versions/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/kai/.nvm/versions/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/kai/.nvm/versions/node/v8.9.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash