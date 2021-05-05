#/bin/bash


#dname=$1
#PORT=$2
source_copy=$3
export source_copy

source ./download_files.sh $source_copy

set -x
mkdir -p ./output
chmod a+rw ./output
docker build -t nifi-$1/alexandre .
docker run --rm --name nifi-$1 \
  -p $2:$2 \
  -v $(pwd)/output:/opt/host-output \
  -d \
  --log-opt max-size=30m --log-opt max-file=10 \
  -e NIFI_WEB_HTTP_PORT=$2 \
  nifi-$1/alexandre:latest


