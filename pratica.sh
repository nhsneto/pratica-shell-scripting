#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Faltando a URL do repositorio remoto."
    exit 0;
fi

repo_url=$1

git clone $repo_url
