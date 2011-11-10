#!/bin/bash

# Enabling auto-hint and anti-aliasing
ln -s /etc/fonts/conf.avail/10-autohint.conf /etc/fonts/conf.d/
ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d/
yum install freetype-freeworld

#----- Reboot now before continuing

fc-cache
