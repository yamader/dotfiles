stow:
	stow -vt ~ home
	stow -vt ~/.config config
	stow -vt ~/.local local

restow:
	stow -Rvt ~ home
	stow -Rvt ~/.config config
	stow -Rvt ~/.local local
