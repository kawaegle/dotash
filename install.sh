#!/bin/bash

if [[ -d ~/.local/share/dotash ]]; then
    (cd ~/.local/share/dotash && git pull)
    if [[ ! -h ~/.local/bin/dotash ]]; then
        ln -sf ~/.local/share/dotash/dotash ~/.local/bin/dotash
    fi
fi

if [[ ! -d ~/.local/share/dotash ]]; then
    git clone https://github.com/oppaiweeb/dotash/ ~/.local/share/dotash
    if [[ ! -h ~/.local/bin/dotash ]]; then
        ln -sf ~/.local/share/dotash ~/.local/bin/dotash
    fi
fi
