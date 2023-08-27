function gpl --wraps="git pull"
  if not git pull $argv
    if not git pull --rebase $argv
      git stash
      git pull --rebase
      git stash pop
    end
  end
end
