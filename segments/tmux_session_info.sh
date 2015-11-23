# Prints tmux session info.
# Assuems that [ -n "$TMUX"].

left_separator_black=''
tmux_conf_theme_session_fg=${tmux_conf_theme_session_fg:-colour16}  # black
tmux_conf_theme_session_bg=${tmux_conf_theme_session_bg:-colour226} # yellow
status_left="❐ #S:#I/#{session_windows}"
run_segment() {
tmux display-message -p "$status_left"
return 0
}
# tmux display-message -p '#S:#I.#P'
