
function chromeNewWindow () {
  local url="$@"

  osascript &>/dev/null <<EOF
  tell application "Google Chrome"
      tell (make new window)
          set URL of active tab to "$url"
      end tell
      activate
  end tell
EOF
}

function chromeOpen () {
  local url="$@"

  osascript &>/dev/null <<EOF
  tell application "Google Chrome"
      activate
      open location "$url"
      activate
  end tell
EOF
}
