# Installation:
# sudo apt install zsh ripgrep fd-find
# sudo ln -s /usr/bin/fdfind /usr/bin/fd
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.oh-my-zsh/plugins/fast-syntax-highlighting

export ZSH="$HOME/.oh-my-zsh"
source $HOME/.oh-my-zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
ZSH_THEME="gallois"
plugins=(
        z
        git
        extract
        zsh-autosuggestions 
        dirhistory
        fd
)
source $ZSH/oh-my-zsh.sh
export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR=nvim
alias w=nvim
alias ww='nvim .'
cd ~
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
