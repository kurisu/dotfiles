# $1 = type; 0 - both, 1 - tab, 2 - title
# rest = text
setTerminalText () {
  # echo works in bash & zsh
  local mode=$1 ; shift
  echo -ne "\033]$mode;$@\007"
}

newTerminalWindow () {
  osascript &>/dev/null <<EOF
      tell application "iTerm"
        create window with default profile
      end tell
EOF
}

stt_both  () { setTerminalText 0 $@; }
stt_tab   () { setTerminalText 1 $@; }
stt_title () { setTerminalText 2 $@; }

function jcurl() {
  curl "$@" | json | pygmentize -l json
}
export -f jcurl

function jcat() {
  cat "$@" | json | pygmentize -l json
}
export -f jcat

function jcurlauth() {
    curl -H "Accept: application/json" -H "Content-Type: application/json" -H "X-User-Email: $1" -H "X-User-Token: $2" ${@:3} | json | pygmentize -l json
}
export -f jcurlauth

