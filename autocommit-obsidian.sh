#!/bin/bash

DIRETORIO_OBSIDIAN=/home/aml/Documentos/obsidian

cd $DIRETORIO_OBSIDIAN

echo "Iniciando commit!"

echo "Os seguintes arquivos serao adicionados no stage:"

_git_status_output=$(git status)

echo "$_git_status_output"

git add .

echo "Relizando commit..."

_data_commit=$(date +%Y-%m-%d)

git commit -m "$_data_commit"

echo "Realizando push para o repositorio..."

_git_push_output=$(git push)

echo "$_git_push_output"

