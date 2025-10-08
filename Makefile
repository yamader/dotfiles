stow:
	stow -vt ~ home
	stow -vt ~/.config config
	stow -vt ~/.local local
	stow -vt ~/bin bin

restow:
	stow -Rvt ~ home
	stow -Rvt ~/.config config
	stow -Rvt ~/.local local
	stow -Rvt ~/bin bin
