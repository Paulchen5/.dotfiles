# clear ~scrollback buffer~
clear # && printf '\e[3J'

# Language
LANG=en_US.UTF-8

# ================================================================================
# Begin Welcome screen
# ================================================================================
# display oh-myzsh logo
RAINBOW=(
    "$(printf '\033[38;2;255;0;0m')"
    "$(printf '\033[38;2;255;97;0m')"
    "$(printf '\033[38;2;247;255;0m')"
    "$(printf '\033[38;2;0;255;30m')"
    "$(printf '\033[38;2;77;0;255m')"
    "$(printf '\033[38;2;168;0;255m')"
    "$(printf '\033[38;2;245;0;172m')"
)

RESET=$(printf '\033[0m')

printf '%s         %s__      %s           %s        %s       %s     %s__   %s\n'      $RAINBOW $RESET
printf '%s  ____  %s/ /_    %s ____ ___  %s__  __  %s ____  %s_____%s/ /_  %s\n'      $RAINBOW $RESET
printf '%s / __ \\%s/ __ \\  %s / __ `__ \\%s/ / / / %s /_  / %s/ ___/%s __ \\ %s\n'  $RAINBOW $RESET
printf '%s/ /_/ /%s / / / %s / / / / / /%s /_/ / %s   / /_%s(__  )%s / / / %s\n'      $RAINBOW $RESET
printf '%s\\____/%s_/ /_/ %s /_/ /_/ /_/%s\\__, / %s   /___/%s____/%s_/ /_/  %s\n'    $RAINBOW $RESET
printf '%s    %s        %s           %s /____/ %s       %s     %s          %s\n'      $RAINBOW $RESET

# Unset the variables
unset RAINBOW
unset RESET
# ================================================================================
# End Welcome screen
# ================================================================================

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    macos
    bgnotify
    poetry
    docker
    docker-compose
    gh
    kubectl
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  # export EDITOR='mvim'
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# tmux adjustments
export TERM=xterm-256color

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
if [ -f "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ]; then
  source "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
fi

# cds completion start

# compinit can be removed here if loaded elsewhere in the script
autoload -Uz compinit && compinit

CDS_PROFILE=$(cds completion --shell zsh --profile 2> /dev/null) || CDS_PROFILE=""
if [ -r "$CDS_PROFILE" ]; then
    . "$CDS_PROFILE"
fi

# cds completion end

# LaTex configuration
export TEXINPUTS="/Users/i588389/Projects/ba-latex-template//:"
export PATH="/usr/local/texlive/2024/bin/universal-darwin/:$PATH"

# Python configuration
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

alias pexp='poetry export -f requirements.txt --output requirements.txt'

# export PATH="/usr/local/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"


function ku() {
    /opt/homebrew/bin/kubectl "$@"
}

# gitignore gi command from https://docs.gitignore.io/
function gi() {
    curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;
}

function hide() {
    printf '\e[3J'
}

eval "$(rbenv init -)"

setopt PROMPT_SUBST # p10k

#compdef explore-cli

_explore_cli_completion() {
    local -a completions
    local -a completions_with_descriptions
    local -a response
    (( ! $+commands[explore-cli] )) && return 1

    response=("${(@f)$(env COMP_WORDS="${words[*]}" COMP_CWORD=$((CURRENT-1)) _EXPLORE_CLI_COMPLETE=zsh_complete explore-cli)}")

    for type key descr in ${response}; do
        if [[ "$type" == "plain" ]]; then
            if [[ "$descr" == "_" ]]; then
                completions+=("$key")
            else
                completions_with_descriptions+=("$key":"$descr")
            fi
        elif [[ "$type" == "dir" ]]; then
            _path_files -/
        elif [[ "$type" == "file" ]]; then
            _path_files -f
        fi
    done

    if [ -n "$completions_with_descriptions" ]; then
        _describe -V unsorted completions_with_descriptions -U
    fi

    if [ -n "$completions" ]; then
        compadd -U -V unsorted -a completions
    fi
}

if [[ $zsh_eval_context[-1] == loadautofunc ]]; then
    # autoload from fpath, call function directly
    _explore_cli_completion "$@"
else
    # eval/source/. command, register function for later
    compdef _explore_cli_completion explore-cli
fi

# GO stuff
export GO_PATH=/Users/i588389/go
export PATH="$PATH:$GO_PATH/bin"
# export PATH="$PATH:/Users/i588389/go/bin/promdump" #?

export PATH
export GPG_TTY=/dev/ttys021
