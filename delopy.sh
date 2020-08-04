#!/bin/sh
APP=highcharts-png-renderer
docker stop $APP
docker rm $APP
docker run --name $APP -d -p 11942:11942 $APP:centos7