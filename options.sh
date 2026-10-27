#!/usr/bin/env bash 
usage() { echo "Usage: $0 -n NAME [-c COURSE]"; } 
name="Student" 
course="Linux" 
while getopts ":n:c:h" opt; do 
  case "$opt" in 
    n) name="$OPTARG" ;; 
    c) course="$OPTARG" ;; 
    h) usage; exit 0 ;; 
    :) echo "Option -$OPTARG needs a value" >&2; usage; exit 2 ;; 
    \?) echo "Unknown option: -$OPTARG" >&2; usage; exit 2 ;; 
  esac 
done 
greet() { printf 'Welcome %s to %s.\n' "$1" "$2"; } 
greet "$name" "$course" 
