
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

rust-ip -s


alias nu-open = open
alias open = ^open
alias code = open -a "Visual Studio Code"
alias cursor = open -a "Cursor"
alias ws = open -a webstorm
alias jc = cd /Users/lychee/Documents/JOG-GROUP/jog-monorepo/applications/jeanscentre
alias gar = cd /Users/lychee/Documents/JOG-GROUP/jog-monorepo/applications/garcia
alias rb2 = /Users/lychee/Documents/bun/bin/bun-help
alias ll = ls -l
alias grhh = git reset --hard HEAD
alias gst = git status -sb

source ./fnm.config.nu

source ~/.cache/carapace/init.nu
