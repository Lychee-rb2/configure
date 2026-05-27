# configure

Personal shell and terminal configuration, managed as a git repo and symlinked into place.

## Structure

| File | Target | Description |
|------|--------|-------------|
| `starship.toml` | `~/.config/starship.toml` | Starship prompt |
| `wezterm.lua` | `~/.wezterm.lua` | WezTerm terminal |
| `MY-AGENTS.md` | `~/.pi/agent/AGENTS.md` | Pi coding agent instructions |

## Setup

```bash
# Starship
ln -sf "$PWD/starship.toml" ~/.config/starship.toml

# WezTerm
ln -sf "$PWD/wezterm.lua" ~/.wezterm.lua
```

After setup, edit files in this repo directly — changes take effect immediately.
