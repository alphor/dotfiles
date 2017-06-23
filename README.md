# Dotfiles
Each machine (virtual or otherwise) has its own config. 
Some things are common to all shells. Example:

``` bash
function sys {
    command systemctl status "$@" --no-pager -l
}
```

Rather than updating each individual .bashrc while logged in to the machine, I update it from wherever, and have git do the heavy lifting.

The only problem is symlinks aren't decided here, which presents two problems:

- Symlinks in emacs are a breeze. ln -s seems to never do what I want.
- Any references to common functionality must be given an absolute path

The latter means I need to decide on a common absolute directory. `dotfiles` is fine.


# Nix package configuration
If I can't find a library or something in nixpkgs, I'll add it to the override section in `config.nix`, so that I can use the definition across all projects. So far there is only the need to compile ZNC with python (for messing about with its extension interface).
