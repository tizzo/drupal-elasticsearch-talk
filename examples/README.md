# Core Commits ELK Demo

1. Clone drupal (or any) git repo
2. Run the bash command in `git_log.sh`
3. Download elasticsearch
4. Unzip and cd into the elasticsearch directory.  Run `./bin/elasticsearch -Des.http.cors.enabled=true -Des.name=one`.  The options will enable CORS headers for kibana and set the name to `one`.
5. Download logstash
6. Unzip and cd into the logstash directory.  Run logstash and pass in the example conf file in this repo `./bin/logstash -vv -f /some/path/logstash-file-import.conf -- web -p 8000`
7. Go to `localhost:8000` in your browser
8. Import the `Core-Commits-Kibana-Dashboard.json` dashboard schema
