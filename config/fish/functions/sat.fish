function sat --wraps="sed"
  for i in $argv
    sed -ie '/^#/d;s/^.*=//;s/-[0-9][^ ]*//' $i && rm {$i}e
    sf $i
  end
end
