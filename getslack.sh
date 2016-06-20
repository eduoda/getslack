#! /bin/sh

SERVER="slackware.mirrors.tds.net"
#SERVER="carroll.cac.psu.edu"
#SERVER="ftp.slackware.com"

VERSIONS="$VERSIONS slackware-14.1"
#VERSIONS="$VERSIONS slackware-current"
VERSIONS="$VERSIONS slackware64-14.1"
#VERSIONS="$VERSIONS slackware64-current"

for v in $VERSIONS; do
  rsync -arvvP --delete --stats \
    --include='extra/source/' \
    --include='extra/source/flashplayer-plugin' \
    --include='extra/source/java' \
    --exclude='extra/source/*' \
    --exclude='*/source' \
    --exclude='pasture' \
    ${SERVER}::slackware/${v} .
done;

