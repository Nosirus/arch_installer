# Syntax highlighting and tab completion
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/LS_COLORS/dircolors.sh
autoload -Uz compinit

SAVEHIST=200
HISTFILE=~/.zsh_history

# Show OS info when opening a new terminal
neofetch

POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir  vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time user host time background_jobs virtualenv rbenv rvm)

POWERLEVEL9K_USER_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_USER_DEFAULT_BACKGROUND="darkorange"

POWERLEVEL9K_USER_SUDO_FOREGROUND="white"
POWERLEVEL9K_USER_SUDO_BACKGROUND="green"

POWERLEVEL9K_USER_ROOT_FOREGROUND="white"
POWERLEVEL9K_USER_ROOT_BACKGROUND="red"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=3
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="white"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="blue"

POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_STATUS_VERBOSE=true

POWERLEVEL9K_DIR_PATH_SEPARATOR=" $(print_icon 'LEFT_SUBSEGMENT_SEPARATOR') "

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_HOST_LOCAL_FOREGROUND='black'
POWERLEVEL9K_HOST_LOCAL_BACKGROUND='white'

POWERLEVEL9K_HOST_REMOTE_FOREGROUND='black'
POWERLEVEL9K_HOST_REMOTE_BACKGROUND='red'

POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_BACKGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="blue"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

# User with skull
user_with_skull() {
    echo -n "\ufb8a $(whoami)"
}
POWERLEVEL9K_CUSTOM_USER="user_with_skull"

# Command auto-correction.
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="dd/mm/yyyy"

# Aliases for a few useful commands
alias mirrorUpdate="sudo reflector --latest 250 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias h="htop"
alias maj='sudo pacman -Syu'
alias up='sudo pacman -Sy'
alias ls="ls --color"
alias ys="yay -S --noconfirm --needed --removemake --cleanafter"
alias yr="yay -R"
alias yc="yay -Yc"

bindkey "\e[3~" delete-char
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
