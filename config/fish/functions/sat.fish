function sat --wraps="sed"
  for i in $argv
    sed -i -e '/^#/d; s/^.*=//; s/-[0-9][^ ]*//' $i
    sf $i
  end
end
