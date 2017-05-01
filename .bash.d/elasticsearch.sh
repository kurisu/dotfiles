function es () {
  window "stt_tab elasticsearch && ~/tools/$(ls ~/tools/. | grep elasticsearch)/bin/elasticsearch"
  tab "stt_tab kibana && ~/tools/$(ls ~/tools/. | grep kibana)/bin/kibana"
  sleep 7
  chromeNewWindow "http://localhost:5601"
  chromeOpen "http://localhost:5601/app/sense"
}
