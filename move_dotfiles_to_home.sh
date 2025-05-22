#!/bin/sh
read -p "will move .xinitrc  .xbindkeysrc  .monitors  .config  .bashrc  .bash_profile" X
mv .xinitrc .xbindkeysrc .monitors .config .bashrc .bash_profile ~/
