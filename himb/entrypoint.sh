#!/bin/bash
if [ -z $GW_MODEL ];then
  echo "Radio model not set. Exiting."
  exit 1
fi

case "${GW_MODEL}" in
  sx1301)
    CONCENTRATORD="/app/bin/chirpstack-concentratord-sx1301"
    ;;
  sx1302)
    CONCENTRATORD="/app/bin/chirpstack-concentratord-sx1302"
    ;;
  *)
    echo "Undefined radio model. Exiting."
    exit 2
    ;;
esac

${CONCENTRATORD} -c /app/conf/global.toml -c /app/conf/channels.toml -c /app/conf/band.toml -c /app/conf/gateway.toml
