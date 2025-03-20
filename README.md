# configure

## build rust-ip

``` fish
cd rust-ip
cargo build --release
```

## set wezterm config

设置$WEZTERM_CONFIG_FILE到当前文件夹的 wezterm.lua 文件

```fish
## macos
/bin/launchctl setenv WEZTERM_CONFIG_FILE <当前文件夹>/.wezterm.lua
```

## set starship config

```fish
export STARSHIP_CONFIG=<当前文件夹>/starship.toml
```

## set fish config

```fish
cp ~/.config/fish/config.fish ~/.config/fish/config.fish.bak
rm ~/.config/fish/config.fish
ln -s <当前文件夹>/config.(mac|win).fish ~/.config/fish/config.fish
```
