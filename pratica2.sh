#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo -e "Faltando nome do diretorio.\nFaltando nome do usuario.\nFaltando email do usuario."
    exit 0;
fi

nome_dir=$1
nome_usr=$2
email_usr=$3

mkdir $nome_dir
cd $nome_dir
echo "<!DOCTYPE html><html lang=\"pt-br\"><head><meta charset=\"UTF-8\"><title></title></head><body></body></html>
" > index.html
git init .
git config user.name $nome_usr
git config user.email $email_usr
git add .
git commit -m 'feat: cria index.html'
