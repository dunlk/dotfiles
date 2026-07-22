if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ==========================================
# FISH CONFIG - Dunk
# ==========================================

# ------------------------------------------
# Variables de entorno
# ------------------------------------------
set -gx CLICOLOR 1
set -gx LSCOLORS dxfxcxdxbxegedabagacad

set fish_color_autosuggestion 6b7280
set fish_color_search_match --background=3b4252
# ---------- Pager (TAB) ----------

# Texto del elemento seleccionado
set -g fish_pager_color_selected_completion white --bold

# Descripción del elemento seleccionado
set -g fish_pager_color_selected_description brwhite

# Fondo del elemento seleccionado
set -g fish_pager_color_selected_background --background=3b82f6

# Elementos no seleccionados
set -g fish_pager_color_completion 7dc4ff
set -g fish_pager_color_description 7f8ea3

# Prefijo que coincide
set -g fish_pager_color_prefix f5a43a --bold

# Barra de progreso
set -g fish_pager_color_progress 9be64c

set -g fish_color_param CDCAF7
# ------------------------------------------
# PATH
# ------------------------------------------
fish_add_path /Library/PostgreSQL/17/bin
fish_add_path /opt/homebrew/opt/ruby/bin
fish_add_path /opt/homebrew/opt/openjdk/bin
fish_add_path $HOME/.composer/vendor/bin
fish_add_path $HOME/.cargo/bin

# Homebrew
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# Bun
set -gx BUN_INSTALL $HOME/.bun
fish_add_path $BUN_INSTALL/bin

# Bun completions para Fish
if test -s "$HOME/.bun/_bun.fish"
    source "$HOME/.bun/_bun.fish"
end

# Prompt - Oh My Posh
if type -q oh-my-posh
    oh-my-posh init fish \
        --config ~/.config/ohmyposh/dunk.omp.json | source
end

# Otro tema disponible:
# oh-my-posh init fish \
#     --config "$(brew --prefix oh-my-posh)/themes/jandedobbeleer.omp.json" | source

# ------------------------------------------
# Título de Kitty
# ------------------------------------------
if test "$TERM" = xterm-kitty
    printf '\e]0;Dunk\a'
end

# Alias generales
alias c="clear"

alias ..="cd ../"

alias gp="cd ~/Desktop/dev/web_full_stack/"
alias tec="cd ~/Desktop/tec/"
alias tecsup="cd ~/Desktop/tecsup"
alias config="cd ~/.config"

alias vm="nvim"

alias lg="lazygit"

alias ll="eza -la --group-directories-first --color=auto"

alias grep="grep --color=auto"

alias pp="ps -ef | grep -v grep | grep -i"

alias lh="ls -a | grep '^\.'"

alias py="python3"
alias pip="pip3"

alias hi='echo "Hola Dunk! ¿Qué aplicación haremos hoy?"'

# Rust
alias cr="cargo run"
alias cc="cargo check"
alias cb="cargo build"
alias cn="cargo new"

# MongoDB
alias mongostart="brew services start mongodb-community@8.0"
alias mongostop="brew services stop mongodb-community@8.0"

# Java + Maven
alias rj='mvn -q package; and java -cp "target/console-game-1.0-SNAPSHOT.jar:target/dependency/*" dunk.vyom.App'
