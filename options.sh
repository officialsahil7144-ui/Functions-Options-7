#!/usr/bin/env bash
set -e

show_help() {
    echo "Usage: $0 [-n NAME] [-h]"
    echo "  -n NAME  Set the user's name"
    echo "  -h       Display this help message"
}

NAME="Student"

while getopts ":n:h" opt; do
    case "$opt" in
        n) NAME="$OPTARG" ;;
        h) show_help; exit 0 ;;
        \?) echo "Invalid option: -$OPTARG"; show_help; exit 1 ;;
        :) echo "Option -$OPTARG requires a value"; show_help; exit 1 ;;
    esac
done

greet_user() {
    echo "Welcome, $1!"
}

greet_user "$NAME"
