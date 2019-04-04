#!/bin/ash

ls -alF /config | /bin/grep pyload.conf -q
if [ $? != 0 ]; then
  echo "[i] Configuration is missing in /config"
  echo "[i] Copy onfiguration to /config"
  mv -r /tmp/pyloadcfg/* /config/
fi

/opt/pyload/pyLoadCore.py --configdir=/config --no-remote
