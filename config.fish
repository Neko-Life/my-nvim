# phpenv
# see tutorial: https://github.com/phpenv/phpenv
set --export PATH "$HOME/.phpenv/bin" $PATH


if status is-interactive
    # Commands to run in interactive sessions can go here

    # load phpenv
    source (phpenv init -|psub)
end


# Created by `pipx` on 2024-03-17 00:48:39
set PATH $PATH "$HOME/.local/bin"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
