#!/bin/sh

# creates a link from $1 to $2
function lft {
  TO=`eval echo $1`
  LINK=`eval echo $2`
  if [ -L "$LINK" ]; then
    echo "- Link $LINK already exists"
    return
  fi
  if [ -e "$LINK" ]; then
    echo "- File $LINK already exists, maybe you want to check that."
    return
  fi
  echo "+ creating link to $TO under $LINK"
  ln -s "$TO" "$LINK"
}

lft bin ~/bin
lft .gemrc ~/.gemrc
lft .git ~/.git
lft .inputrc ~/.inputrc
lft vim ~/.vim
lft .vimrc ~/.vimrc
lft .Xdefaults ~/.Xdefaults
lft .profile ~/.profile
lft Package\ Control.sublime-settings "~/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings"
lft Preferences.sublime-settings ~/.config/sublime-text-3/Packages/Preferences.sublime-settings

