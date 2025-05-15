stow:
	stow -vt ~/bin bin
	stow -vt ~/.config config
	stow -vt ~ home

restow:
	stow -Rvt ~/bin bin
	stow -Rvt ~/.config config
	stow -Rvt ~ home
