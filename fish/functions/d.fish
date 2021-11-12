function d
  if [ -n "$argv" ]
    rdmd $RDMDFLAGS $argv
  else
    drepl
  end
end
