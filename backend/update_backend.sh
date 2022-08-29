﻿#!/bin/bash
sudp systemctl stop RestAPI
git pull origin oktay
sudo cp RestAPI.service /etc/systemd/system/RestAPI.service
sudo systemctl daemon-reload
dotnet publish -c Release -o /srv/RestAPI/
sudp systemctl start RestAPI