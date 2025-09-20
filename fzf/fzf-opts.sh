export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#6C7086,label:#CDD6F4 \
--height 40% --inline-info --layout reverse \
--tmux center,80%,40%,border-native"

export FZF_CTRL_T_OPTS=" \
--walker-skip .git \
--scheme path \
--bind '?:change-preview-window(down|hidden|)' \
--bind 'ctrl-y:become(osc52_copy {+} > /dev/tty)+abort' \
--bind 'ctrl-v:become(vim {+} > /dev/tty)+abort' \
--header '[CTRL-Y] copy command  [CTRL-V] open in vim  [?] preview' \
--preview 'bat --color=always -n {}'"

export FZF_CTRL_R_OPTS=" \
--scheme history \
--bind '?:toggle-preview' \
--bind 'ctrl-y:become(osc52_copy {2..} > /dev/tty)+abort' \
--header '[CTRL-Y] copy command  [?] preview' \
--preview 'echo {}' --preview-window down:3:hidden:wrap"

export FZF_ALT_C_OPTS=" \
--walker-skip .git \
--scheme path \
--bind '?:change-preview-window(down|hidden|)' \
--bind 'ctrl-y:become(osc52_copy {} > /dev/tyy)+abort' \
--header '[CTRL-Y] copy path  [?] preview' \
--preview 'eza --color=always --icons=always -T -L 2 {}'"

export FZF_COMPLETION_PATH_OPTS=$FZF_CTRL_T_OPTS
export FZF_COMPLETION_DIR_OPTS=$FZF_ALT_C_OPTS
