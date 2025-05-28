#!/bin/sh
git add .
git commit -m "$(clock)"
git push
doas cp -f ./* /mnt/scripts
