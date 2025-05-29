#!/bin/bash

diretorio="Projetos/ReactJS/"
viteconfig="import { defineConfig } from 'vite';
import tailwindcss from '@tailwindcss/vite';
export default defineConfig({ plugins: [ tailwindcss(), ], })"
indexcss='@import "tailwindcss";'

if [ ! -d "$diretorio" ]; then
  mkdir -p "$diretorio"
fi
cd "$diretorio"

read -p "Nome do projeto: " projeto
if [ -z "$projeto" ]; then
	echo "Nome do projeto não foi fornecido. Saindo..."
	exit 1
fi

if [ -d $projeto ]; then
	cd "$projeto"
	tmux
else
  mkdir $projeto; cd ./$projeto; npm create vite@latest ./; npm install; npm install tailwindcss @tailwindcss/vite
		echo "$viteconfig" > vite.config.js
		cd src; echo "$indexcss" > index.css
		cd ../
		tmux
fi
