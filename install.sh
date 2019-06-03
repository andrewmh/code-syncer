#!/bin/bash

echo "Checking dependencies..."

which brew > /dev/null
BREW_INSTALLED=$(( $? == 0 ))

if [ $BREW_INSTALLED == 0 ]; then
  echo "Installing brew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

which fswatch > /dev/null
FSWATCH_INSTALLED=$(( $? == 0 ))

if [ $FSWATCH_INSTALLED == 0 ]; then
  echo "Installing fswatch..."
  brew install fswatch
fi

echo "Installing scripts..."
cp watch-sync /usr/local/bin/
cp sync-code /usr/local/bin/

