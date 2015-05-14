#! /usr/bin/env bash
git log --pretty=format:'{"commit": "%H", "author_name": "%an", "committer_name": "%cn", "author": "%an <%ae>","committer": "%cn <%ce>", "date": "%ad","message": "%s", "@timestamp": "%aI"}' > /full_log.json
