#!/bin/bash

sudo chown munge:munge -R /run/munge  
sudo -u munge munged -F > /var/log/munged.log &!

slurmd -D --instance-id worker-0