# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH="$PATH:$HOME/.local/bin:$HOME/bin:$HOME/bin/scripts"

export PATH
if [ -e /home/ajarara/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ajarara/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# we want this available to keybinds so we put it in here instead of .bashrc
. /home/ajarara/dotfiles/kfreestyle2.sh

# OPAM configuration
. /home/ajarara/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
