function d
  if count $argv > /dev/null
    rdmd $argv
  else
    drepl
  end
end
