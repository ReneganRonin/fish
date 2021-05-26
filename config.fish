starship init fish | source
status is-login; and pyenv init --path | source

alias ua-drop-caches='sudo paccache -rk3; paru -Sc --aur --noconfirm'
alias ua-update-all='set TMPFILE (mktemp); \
	sudo true; \
	rate-arch-mirrors --max-delay=21600 --save=$TMPFILE \
	  && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
	  && sudo mv $TMPFILE /etc/pacman.d/mirrorlist \
	  && ua-drop-caches \
	  && paru -Syyu --noconfirm'

alias ls=exa
alias ll="exa -l"
alias cat=bat
zoxide init fish | source
alias cd=z
fish_ssh_agent
