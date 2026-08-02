EMPTY =
SPACE = ${EMPTY} ${EMPTY}
stow-only = --ignore='$(subst ${SPACE},|,$(filter-out $2,$(shell ls -A $1)))'

stow:
	stow -vt ~ home
	stow -vt ~/.config config
	stow -vt ~/.local local

restow:
	stow -Rvt ~ home
	stow -Rvt ~/.config config
	stow -Rvt ~/.local local

stow-min:
	stow -vt ~ home $(call stow-only,home,.docker .vimrc)
	stow -vt ~/.config config $(call stow-only,config,fish git nvim tmux)
	stow -vt ~/.local local $(call stow-only,local,)

restow-min:
	stow -Rvt ~ home $(call stow-only,home,.docker .vimrc)
	stow -Rvt ~/.config config $(call stow-only,config,fish git nvim tmux)
	stow -Rvt ~/.local local $(call stow-only,local,)
