export AUTOLISTPATH=$HOME/workspace/autolist

function autolist () {
  tab "stt_tab autolist-web && cd $AUTOLISTPATH && foreman start web"
  sleep 2
  chromeNewWindow "http://localhost:5000"
}

