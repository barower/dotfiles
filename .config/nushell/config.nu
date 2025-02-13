$env.config.show_banner = false

alias ,gd = nvim -c "Git difftool"
alias ,gc = nvim -c "Git difftool --cached"
alias ,fg = nvim -c "Telescope live_grep"
alias ,ff = nvim -c "Telescope find_files"
alias gk = gitk --all

def --env y [...args] {
    let tmp = (mktemp -t "yazi-cwd.XXXXXX")
    yazi ...$args --cwd-file $tmp
    let cwd = (open $tmp)
    if $cwd != "" and $cwd != $env.PWD {
        cd $cwd
    }
    rm -fp $tmp
}

use ~/.cache/starship/init.nu
