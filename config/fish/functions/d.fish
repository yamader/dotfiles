function d
  if count $argv > /dev/null
    rdmd $RDMDFLAGS $argv
  else
    drepl
  end
end
