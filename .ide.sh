#!/bin/bash
cd Projetos/ReactJS/
echo "projetos atuais: $(ls -d *)"
read -p "Nome do projeto: " projeto
viteconfig="import { defineConfig } from 'vite';
import tailwindcss from '@tailwindcss/vite';
export default defineConfig({ plugins: [ tailwindcss(), ], })"
indexcss='@import "tailwindcss";'

if [ -d $projeto ]
  then
		mkdir $projeto; cd ./$projeto; tmux
	else
		mkdir $projeto; cd ./$projeto; npm create vite@latest ./; npm install; npm install tailwindcss @tailwindcss/vite
		echo "$viteconfig" > vite.config.js
		cd src; echo "$indexcss" > index.css
		cd ../
		tmux
fi

