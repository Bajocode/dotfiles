# Files
alias lsh='ls -ld .?*'
alias lsa='ls -a'
alias ..='cd ..'
alias dd='cd ~/Developer'
alias ddm='cd ~/Developer/machineLearning'
alias ddi='cd ~/Developer/ios'
alias ddw='cd ~/Developer/web'
alias ddu='cd ~/Developer/backend/ibm/jumbo-api/ && ls'
alias ddj='cd ~/Developer/ios/ibm/jumbo/jumbo-ios'
alias ddja='cd ~/Developer/ios/ibm/jumbo/jumbo-ios/ArchitectureProposal'
alias ddjf='cd ~/Developer/ios/ibm/jumbo/jumbo-ios/Jumbo/JumboUITests/FeatureFiles/'
alias ddl='cd ~/Developer/ios/ibm/jumbo/Jumbo_Loyalty_iOS'
alias ddn='cd ~/Developer/notes'
alias brc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias vimb='cd ~/.vim/bundle'

# Git
alias gr='echo git reset --hard; git reset --hard'
alias gr1='echo git reset HEAD~1; git reset HEAD~1'
alias gcd='echo git checkout develop; git checkout develop' 
alias gcdp='echo "git checkout develop; git pull"; git checkout develop; git pull' 
alias gcr='echo git checkout release; git checkout release' 
alias gcm='echo git checkout master; git checkout master' 
alias gs='echo git status; git status'
alias gd='echo git diff; git diff'
alias gc='echo git checkout; git checkout'
alias gac='echo "git add .; git commit"; git add .; git commit'
alias gam='echo git commit -am; git commit -am'
alias gl='echo git log; git log'
alias glo='echo git log --oneline; git log --oneline'
alias gp='echo git pull; git pull'
alias gsub='echo git submodule update --init; git submodule update --init'

# Dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'

# Fastlane
alias fda='echo fastlane deploy_alpha --env development; fastlane deploy_alpha --env development'
alias fdb='echo fastlane deploy_beta --env development; fastlane deploy_beta --env development'

# Xcode
alias xj='ddj; echo open Jumbo.xcworkspace; open Jumbo.xcworkspace'
alias xj12='ddj; git checkout ios12; echo git checkout ios12  open -a /Applications/Xcode_10_beta_5.app/ Jumbo.xcworkspace/; open -a /Applications/Xcode_10_beta_5.app/ Jumbo.xcworkspace/'
alias xjl='ddl; echo open Jumbo_Loyalty.xcworkspace; open Jumbo_Loyalty.xcworkspace'
alias xja='ddj; git checkout architectureProposal; ddja; open ArchitectureProposal.xcworkspace'
alias xjh='ddh; open Journathon.xcworkspace'
alias xrecordVideo='echo xcrun simctl io booted recordVideo ~/Desktop/iOSsimulatorRecording.mp4; xcrun simctl io booted recordVideo ~/Desktop/iOSsimulatorRecording.mp4'

# React Native
alias x5='$ANDROID_HOME/emulator/emulator @ReactNative_Nexus_5X'

# Jupyter notebook
alias jn='jupyter notebook'

# Tmux
alias t='tmux'

# iCloud
alias cloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs; ls'

# Nightshift
alias ns='nshift'
alias ns1='nshift 100'
alias ns0='nshift 0'

# Notes
alias n='ddn; windev; vim ~/Developer/notes'

# Terminal window
alias winsizehalf='printf '"'"'\e[8;77;136t'"'"''
alias winposzero='printf '"'"'\e[3;0;0t'"'"''
alias w='echo winsizehalf \; winposzero; winsizehalf; winposzero'

# Fastlane requirements
export export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Node
alias tsconfig="echo node_modules/typescript/bin/tsc --init; node_modules/typescript/bin/tsc --init"
alias tsinit="cp -a ~/Developer/web/own/typescript/starter/. .; npm i"

# MongoDB
alias killmongod='kill $(pgrep mongo)'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Python 2.7 with brew
export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"
