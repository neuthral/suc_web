#!/usr/bin/env bash

# changed date to show unix timestamp
while /usr/bin/true
do
    read -r line || exit 0  # EOF
    /usr/bin/echo "$(/usr/bin/date +%s)"\
        "$(printf "%-9s" "$(/usr/bin/id --user --name --real)")" \
        "$line" >> "$HOME/.suc/$1"
done
