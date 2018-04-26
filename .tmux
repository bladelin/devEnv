unbind C-b
set -g prefix ^A
bind a send-prefix

set-option -g default-shell /bin/zsh
set -g terminal-overrides 'xterm*:smcup@:rmcup@'
set -g display-time 3000
set -g history-limit 10000

set -g base-index 1
set -g pane-base-index 1
set -s escape-time 0
set -g mouse off
set -g default-terminal "screen-256color"

# default window title colors
set-window-option -g window-status-fg colour244  # base0
#set-window-option -g window-status-bg default

# active window title colors
set-window-option -g window-status-current-fg colour166  # orange
set-window-option -g window-status-current-bg default

set-option -g status on
set-option -g status-interval 2
set-option -g status-justify "centre"
set-option -g status-left-length 60
#set-option -g status-right-length 90

set-option -g status-left "#(~/tmux-powerline/powerline.sh left)"
#set-option -g status-right "#(~/tmux-powerline/powerline.sh right)"

# set colors
set-window-option -g window-status-current-fg black
#set-window-option -g window-status-current-bg colour6
#set-window-option -g window-status-current-attr default

# switch to next window
unbind C-Right
bind -n C-Right next-window

# switch to previous window
unbind C-Left
bind -n C-Left previous-window

# split windows like vim
# vim's definition of a horizontal/vertical split is reversed from tmux's
bind s split-window -v
bind v split-window -h

# move around panes with hjkl, as one would in vim after pressing ctrl-w
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
