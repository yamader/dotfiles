alias ga="git add"
alias gaf="ga --force"
alias gam="gc --amend"
alias gb="git branch"
alias gbs="git bisect"
alias gc="git commit -S"
alias gch="git checkout"
alias gcp="git cherry-pick"
alias gd--="gd HEAD^ HEAD"
alias gd-="gd HEAD"
alias gd="git diff"
alias gds="gd --staged"
alias ge-='gd- $argv && git add'
alias ge='gd $argv && git add'
alias gef='gd $argv && git add --force'
alias gf="git fetch"
alias gl="git log"
alias gm="git merge"
alias gp="git push"
alias gpf="gp --force-with-lease"
alias gpl="git pull --rebase --autostash"
alias gpo="gp origin"
alias gr="git reset"
alias grb="git rebase"
alias grs="git restore"
alias gs="git stash"
alias gss="gs show"
alias gst="git status"
alias gt="git tag"
alias vge='v $argv && ge'

function gcm --wraps gc
  gc -m "$argv"
end
