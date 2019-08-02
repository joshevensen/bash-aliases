alias repos="cd ~/source/repos"
alias local="cd ~/source/local"
alias code="cd ~/code"
alias laragon="cd c:/laragon/www"

alias add="git add"
alias all="git add ."
alias branch="git branch"
alias newbranch="git checkout -b"
alias commit="git commit -m"
alias commitall="git add . | git commit -m"
alias check="git checkout"
alias master="git checkout master"
alias fetch="git fetch"
alias merge="git merge"
alias push="git push"
alias upstream="git push --set-upstream origin"
alias pull="git pull"
alias status="git status"
alias cleanorigin="git remote update origin --prune"
alias cleanlocal='git branch | grep -v "master" | xargs git branch -D'
alias cleanall='cleanorigin; cleanlocal'

alias fresh='php artisan migrate:fresh --seed'

alias up="homestead up"
alias vssh="homestead ssh"
alias down="homestead suspend"
alias provision="homestead reload --provision"
