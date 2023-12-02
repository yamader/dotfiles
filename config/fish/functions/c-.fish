function c- --wraps cd
  set dest $argv[1]
  if not builtin cd $argv
    switch (read -lP "do? ")
      case c
        doas chown -R (whoami) $dest
        set par $dest
        while not builtin cd $dest
          set par (dirname $par)
          set cmd doas chown (whoami) $par
          read -P "$cmd; rly?" && $cmd
        end
    end
  end
end
