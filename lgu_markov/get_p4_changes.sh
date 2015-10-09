#!/usr/bin/env bash

set -exu
p4 changes -u lunderhi -l | egrep -v 'Change [0-9]+ on [0-9]{4}/[0-9]{2}' > lgu_changes.txt
