#! /bin/sh

mkdir -p /opt/geoserver/data_dir/workspaces/
rm -rf /opt/geoserver/data_dir/workspaces/omsf
cp -r /init-data/omsf /opt/geoserver/data_dir/workspaces/
cp -r /init-data/xlink /opt/geoserver/data_dir/workspaces/
cp /init-data/*.xml /opt/geoserver/data_dir/

exec catalina.sh run
