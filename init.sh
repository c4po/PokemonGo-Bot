#!/bin/bash

cd /usr/src/app
sed "s#ACCOUNT#$ACCOUNT#" configs/config.json.example > configs/config.json
sed -i "s#PASSWORD#$PASSWORD#" configs/config.json
sed -i "s#LOCATION#$LOCATION#" configs/config.json

python pokecli.py
