#!/bin/sh

# Pull latest
dotfiles pull

# Generate symlinks
ln -s ~/.workflow/* ~/Library/Services

# Update shortcuts
