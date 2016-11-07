source /usr/share/zsh/scripts/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle zsh-users/zsh-completions src


ZSH_THEME="minimal"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh


PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

export GOPATH=~/.go
PATH="$PATH:$GOPATH/bin"

export RANGER_LOAD_DEFAULT_RC=FALSE
export FT2_SUBPIXEL_HINTING=1
