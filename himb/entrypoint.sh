#!/bin/bash
if [ -z $GW_MODEL ];then
  echo "Radio model not set. Exiting."
  exit 1
fi

case "${GW_MODEL}" in
  sx1301)
    /app/bin/chirpstack-concentratord-sx1301 -c /app/conf/global.toml -c /app/conf/channels.toml -c /app/conf/band.toml -c /app/conf/gateway.toml
    ;;
  sx1302)
    /app/bin/chirpstack-concentratord-sx1302 -c /app/conf/global.toml -c /app/conf/channels.toml -c /app/conf/band.toml -c /app/conf/gateway.toml
    ;;
  *)
    echo "Undefined radio model. Exiting."
    exit 2
    ;;
esac

exit $?
