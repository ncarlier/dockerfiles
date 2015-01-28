
#!/bin/sh

APPNAME=elasticsearch
IP=`sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' $APPNAME`
DATE=`date +%Y-%m-%d`

if [ $1 -eq "init"]; then
    echo "Dumping container $APPNAME data..."
    curl -XPUT "http://$IP:9200/_snapshot/my_backup" -d "{
        type: \"fs\",
        settings: {
            location: \"/var/opt/elasticsearch/\",
            compress: true
        }
    }"
fi

curl -XPUT "$IP:9200/_snapshot/my_backup/snapshot_$DATE?wait_for_completion=true"
