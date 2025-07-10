fish_add_path /usr/local/go/bin
fish_add_path /home/felix/.local/share/coursier/bin
fish_add_path /home/felix/go/bin

if status is-interactive

    starship init fish | source

    abbr exa eza
    abbr bat batcat

    # override some git abbvs to avoid tragedy
    abbr gpu 'git push --set-upstream origin (git_current_branch)'
    abbr gl 'git pull'
    abbr gcb 'git checkout -b'
    abbr -e gst

    # my own useful ones
    abbr code codium
    abbr vstbx 'codium $WS/toolbox'
    abbr vsplt 'codium $WS/platform-k8s'
    abbr k kubectl
    abbr abfz 'abbr | fzf'
    abbr aud 'sudo apt update'
    abbr aug 'sudo apt upgrade'
    abbr alsu 'apt list --upgradable'
    abbr ws 'cd $WS'
    abbr smqa 'cd $WS/phoenix-service'
    abbr smulf 'cd $WS/ulf-service'
    abbr smacc 'cd $WS/accounts-service'

    # docker stuff
    abbr -a -- dcu docker compose up
    abbr -a -- dcud docker compose up -d
    abbr -a -- dcudb docker compose up --build -d
    abbr -a -- dcubd docker compose up --build -d
    abbr -a -- dcd docker compose down
    abbr -a -- dcdv docker compose down -v

    zoxide init fish | source

    bind \cf __append_pipe_fzf

end

source ~/.asdf/asdf.fish

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/felix/miniconda3/bin/conda
    eval /home/felix/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/felix/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/felix/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/felix/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

# direnv hook
direnv hook fish | source


