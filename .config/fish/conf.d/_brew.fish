if test -d /home/linuxbrew/.linuxbrew
    /home/linuxbrew/.linuxbrew/bin/brew shellenv | source
else if test -d /opt/homebrew
    /opt/homebrew/bin/brew shellenv | source
end
