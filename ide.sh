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
    cd ./$projeto
    tmux split-window -v -p 30
    tmux split-window -h -p 66
    tmux split-window -h -p 50
		vim ./
  else
    mkdir $projeto
    npm create vite@latest ./$projeto; cd $projeto; npm install tailwindcss @tailwindcss/vite; npm install
	  echo $viteconfig > vite.config.ts
	  if [ -f vite.config.js ]
	    then
	      rm -rf ./vite.config.js
	    else
	      echo ":)"
	  fi
	  cd src
	  echo $indexcss > index.css
    cd ../
    tmux split-window -v -p 30
    tmux split-window -h -p 66
    tmux split-window -h -p 50
    vim ./
fi

