#!/bin/sh
unlink ~/.config/regolith
rm -r ~/.config/regolith
ln -s `pwd`/../regolith ~/.config/regolith

unlink ~/.config/polybar
rm -r ~/.config/polybar
ln -s `pwd`/polybar ~/.config/polybar

sudo unlink /etc/regolith/styles/onedark
sudo ln -s `pwd`/styles/onedark /etc/regolith/styles/onedark
