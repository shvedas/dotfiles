#!/bin/bash
WORKFOLDER=workspace2
WORKDIR=~/$WORKFOLDER
BACKUP=./_backup

get_os() {
    # Identify the operating system.
    local un=$(uname -a)
    os="unknown"
    if [[ "$un" =~ [Dd]arwin ]]; then
        echo "osx"
    elif [[ "$un" =~ [Uu]buntu ]]; then
        echo "ubuntu"
    else
        logger -s "Unable to idenfify operating system from uname '$un'"
        exit 1
    fi
}

# http://djm.me/ask
ask() {
    local prompt default REPLY

    while true; do

        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi

        # Ask the question (not using "read -p" as it uses stderr not stdout)
        echo -n "$1 [$prompt] "

        # Read the answer (use /dev/tty in case stdin is redirected from somewhere else)
        read REPLY </dev/tty

        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi

        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac

    done
}

askWorkspace() {
    local REPLY

    while true; do

        # Ask the question (not using "read -p" as it uses stderr not stdout)
        echo -n "$1 [$2] "

        # Read the answer (use /dev/tty in case stdin is redirected from somewhere else)
        read REPLY </dev/tty

        # # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$2
        fi

        WORKFOLDER=$REPLY
        WORKDIR=~/$WORKFOLDER
        return 1
    done
}