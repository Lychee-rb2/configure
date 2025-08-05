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
# macos
cp ~/.config/fish/config.fish ~/.config/fish/config.fish.bak
rm ~/.config/fish/config.fish
ln -s <当前文件夹>/config.(mac|win).fish ~/.config/fish/config.fish
```

```fish
# win
ComSpec改为C:\msys64\usr\bin\fish.exe
```

## set nu config

```nu
// nu config后在nu的配置文件中添加
source ($nu.default-config-dir | path join "<当前文件夹>/config.nu")
```

## carapace

``` nu
brew install carapace
```

## Test

你好

## 测试

提交
hello world
