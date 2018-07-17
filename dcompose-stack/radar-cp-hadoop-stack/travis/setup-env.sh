#!/bin/bash

# create hadoop netword
sudo docker network create hadoop

# create volumes
sudo docker volume create certs
sudo docker volume create certs-data

# setup mock configs
cp ./travis-env.template ../.env
cp ./travis-smtp.template ../etc/smtp.env
cp ../etc/radar-backend/radar.yml.template ../etc/radar-backend/radar.yml
cp ../etc/webserver/nginx.conf.template ../etc/webserver/nginx.conf
cp ../etc/hdfs-connector/sink-hdfs.properties.template ../etc/hdfs-connector/sink-hdfs.properties
cp ../etc/mongodb-connector/sink-mongo.properties.template ../etc/mongodb-connector/sink-mongo.properties
cp ../etc/managementportal/config/oauth_client_details.csv.template ../etc/managementportal/config/oauth_client_details.csv
cp ../etc/redcap-integration/radar.yml.template ../etc/redcap-integration/radar.yml

echo "Setup mock configurations are finished..."