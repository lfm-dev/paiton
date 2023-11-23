#!/bin/bash

checkFolder(){
    if [ ! -d "$HOME/.py-venv" ];then
        mkdir "$HOME/.py-venv"
    fi
}

printHelp(){
    envs=`ls $HOME/.py-venv`
    echo "usage:"
    echo
    echo " source paiton v_env (activate v_env)"
    echo " paiton create v_env"
    echo " paiton delete v_env"
    echo
    echo "available virtual enviroments:"
    if [[ -z "${envs[@]}" ]]; then
        echo "none"
    else
        echo ${envs[@]}
    fi
}

checkFolder

if [ -z "$1" ] || [ "$1" == "-h" ];then
    printHelp
elif [ "$1" == "create" ];then
    python3 -m venv $HOME/.py-venv/$2
elif [ "$1" == "delete" ];then
    rm -r $HOME/.py-venv/$2
else
    source $HOME/.py-venv/$1/bin/activate || echo "no virtual enviroment called $1" # run or error
fi