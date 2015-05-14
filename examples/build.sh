docker pull tizzo/logstash
docker run --rm -p 9200:9200 -p 9300:9300 -p 9999:9999 -p 8000:8000 -v "${PWD}:/conf" --rm tizzo/logstash /logstash/bin/logstash agent -f /conf/logstash.conf -- web -p 8000

# TODO: Inline these commands so that we can drop the volume?
*logstash.conf*
input {
  stdin {
    type => "human"
  }
  tcp {
    port  => 9999
    codec => json_lines
  }
}

output {
  # Print each event to stdout.
  stdout {
    codec => rubydebug
  }
  elasticsearch {
    #protocol => transport
    embedded => true
  }
}

 git log --pretty=format:'{"commit": "%H","author": "%an <%ae>","date": "%ad","message": "%f", "@timestamp": "%aI"}' | pv -L 400 | nc 192.168.59.103

