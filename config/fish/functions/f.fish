function f
  if ! count $argv > /dev/null
    echo ファッ?!
    return 1
  end

  set -l cmd prettier -w
  for i in $argv
    switch $i
      case "*.c" "*.cc"; set cmd clang-format -i
      case "*.py"; set cmd ruff format
    end
  end

  $cmd $argv
end
