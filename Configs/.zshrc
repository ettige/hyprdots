# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/


# Helpful aliases
alias  l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias pa='$aurhelper -Ss' # list availabe package
alias pc='$aurhelper -Sc' # remove unused cache
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
alias vc='code' # gui code editor


plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

#load oh-my-zsh
source $ZSH/oh-my-zsh.sh
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# completions
[ -s "$BUN_INSTALL/_bun" ] || source "$BUN_INSTALL/_bun"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
# completions
[ -s "$VOLTA_HOME/_volta" ] ||  source "$VOLTA_HOME/_volta"

eval "$(starship init zsh)"
