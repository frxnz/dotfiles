#!/bin/bash

############################
# setup.sh
# Run this script when initially setting up a new computer
############################

# configure Git
echo "Configuring git and Github"
git config --global user.name "Derek Wheelden"
git config --global user.email "derek.wheelden@gmail.com"

# install Homebrew
echo "Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install Chrome
echo "Installing Google Chrome
temp=$TMPDIR$(uuidgen)
mkdir -p $temp/mount
curl https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg > $temp/1.dmg
yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg
cp -r $temp/mount/*.app /Applications
hdiutil detach $temp/mount
rm -r $temp

# install Node
echo "Installing Node.js"
brew install node
