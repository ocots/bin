#!/bin/sh
# alias jtest='/Users/ocots/bin/julia_test.sh'
# in ~/.zsh_aliases

if [ $# -eq 0 ]; then
    julia --project -e "using Pkg; Pkg.test()"
else
    test_args=""
    for arg in "$@"; do
        if [ -z "$test_args" ]; then
            test_args="\"$arg\""
        else
            test_args="$test_args, \"$arg\""
        fi
    done
    
    julia --project -e "using Pkg; Pkg.test(;test_args=[$test_args])"
fi
