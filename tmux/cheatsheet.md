# tmux Cheatsheet

Prefix: `Ctrl-a` (denoted as `<P>` below)

## Sessions

| Command                     | Description       |
| --------------------------- | ----------------- |
| `tmux new -s name`          | New named session |
| `tmux ls`                   | List sessions     |
| `tmux a -t name`            | Attach to session |
| `tmux kill-session -t name` | Kill session      |
| `<P> d`                     | Detach            |
| `<P> s`                     | Session picker    |
| `<P> $`                     | Rename session    |

## Windows (tabs)

| Command           | Description              |
| ----------------- | ------------------------ |
| `<P> c`           | New window               |
| `<P> ,`           | Rename window            |
| `<P> &`           | Kill window              |
| `<P> n` / `<P> p` | Next / previous window   |
| `<P> 0-9`         | Jump to window by number |
| `<P> w`           | Window picker            |

## Panes (splits)

| Command           | Description                         |
| ----------------- | ----------------------------------- |
| `<P> %`           | Split vertically                    |
| `<P> "`           | Split horizontally                  |
| `<P> x`           | Kill pane                           |
| `<P> arrow`       | Move between panes                  |
| `<P> z`           | Toggle pane zoom (fullscreen)       |
| `<P> {` / `<P> }` | Swap pane left / right              |
| `<P> Space`       | Cycle pane layouts                  |
| `<P> q`           | Show pane numbers (press # to jump) |

## Copy Mode

| Command | Description                           |
| ------- | ------------------------------------- |
| `<P> [` | Enter copy mode (vi keys to navigate) |
| `q`     | Exit copy mode                        |
| `<P> ]` | Paste buffer                          |

## Misc

| Command                     | Description                |
| --------------------------- | -------------------------- |
| `<P> :`                     | Command prompt             |
| `<P> ?`                     | List all keybindings       |
| `<P> t`                     | Show clock                 |
| `tmux source ~/.tmux.conf`  | Reload config (from shell) |
| `<P> : source ~/.tmux.conf` | Reload config (from tmux)  |
