#!/usr/bin/env bash

if [ $# -gt 0 ]; then
    CMD=$1
    PORT=5554
    echo "Starting emulator[$PORT]..."
    emulator64-arm -avd test -no-skin -no-boot-anim -no-audio -no-window -verbose -port $PORT &
    wait-for-emulator.sh
    # Insanely set umask to all-read, all-write so the target files written by gradle can be changed by the (non-root) user that initially called docker
    umask 0000
    $CMD
else
    echo "No command is specified"
fi
