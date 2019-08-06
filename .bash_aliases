alias newalias='vim ~/.bashrc; source ~/.bashrc'

# Directories
alias code="cd ~/code"

# Git
alias storecreds="git config credential.helper store"
alias add="git add"
alias all="git add ."
alias branch="git branch"
alias newbranch="git checkout -b"
alias commit="git commit -m"
alias commitall='git add -A; git commit -am "'
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

alias log="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

function mergeMaster() {
    branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
    echo $branch
    master
    git checkout $branch
    git merge master
}

# Laravel
alias rollback='php artisan migrate:rollback'
alias migrate='php artisan migrate'
alias seed='php artisan migrate --seed'
alias dump='composer dump-autoload'
alias fresh='php artisan migrate:fresh --seed'
alias refresh='dump; fresh'

function routes() {
    php artisan route:list --compact | grep $1
}

# Shawn's Laravel Generator
alias genmodel='php artisan gen:full --template-set=model-only'
alias genapi='php artisan gen:templates --template-set=api-crud-controller-only'
alias genresource='php artisan gen:templates --template-set=resource-only'
alias genenum='php artisan gen:templates --template-set=enum-model'
alias genprototype='php artisan gen:full --template-set=prototype'
alias genprototyperefresh='php artisan gen:full --template-set=prototype_controller'
alias genfull='php artisan gen:full'
alias gendocs='php artisan apidoc:generate'

function genmigration() {
    php artisan make:migration create_$1_table --create=$1
}
function regenprototype() {
    fresh
    genprototyperefresh $1 --force
}

# Homestead and Vagrant
alias up="homestead up"
alias vssh="homestead ssh"
alias down="homestead suspend"
alias provision="homestead reload --provision"
