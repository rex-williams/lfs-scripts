#!/bin/sh
set -x
{
    git add .
    git commit -m "$(clock)"
    git push
} &
doas cp -fv ./* /mnt/scripts &
wait
