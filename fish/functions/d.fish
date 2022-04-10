function d
  if [ -n "$argv" ]
    rdmd $argv
  else
    drepl
  end
end
