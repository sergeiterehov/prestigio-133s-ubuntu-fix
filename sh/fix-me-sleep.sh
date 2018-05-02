#!/bin/sh

set -e

if [ "$2" = "suspend" ] || [ "$2" = "hybrid-sleep" ]; then
    case "$1" in
        post)
            # All fixes
            fix-me
        ;;
    esac
fi