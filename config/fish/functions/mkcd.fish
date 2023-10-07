function mkcd --wraps="mkdir"
  mkdir -p $argv
  for i in $argv[-1..1]
    cd $i 2>/dev/null && return
  end
end
