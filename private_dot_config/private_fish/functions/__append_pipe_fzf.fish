function __append_pipe_fzf
    set -l cmd (commandline -b)
    commandline -r $cmd" | fzf"
    commandline -f execute
end
