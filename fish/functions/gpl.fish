function gpl --wraps="git pull"
  if not git pull $argv
    git stash
    git pull --rebase
    git stash pop
  end
end
