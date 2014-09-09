#!/bin/bash
TO="es"
if selection=$(cat ~/.voice_commands/"v-c LANGS"/commands-"$TO" |  zenity --list --width="750" --height="550" --column="Pick one" --title="Traducir algún comando" --text="¿Qué comando quieres traducir ?");then

string=$( echo "$selection" | cut -d'=' -f1 )
orders=$( echo "$selection" | cut -d'=' -f2 )
sh ~/.voice_commands/Scripts/translator.sh ""$string"="$orders"" 2>&1  | awk -vRS="\r" '$1 ~ /Porcentaje:/ {gsub(/Porcentaje:/," ");gsub(/%\)/," ");gsub(/ \(/," ");print $1"\n# Proceso de traducción.\\n\\n"$2": \\t\\t"$3"\\n\\nPorcentaje:\\t"$1; fflush();}' | zenity --progress --auto-close --no-cancel --ok-label="Quit" --width="270" --height="130" --title=" Progreso..." 
exit 1
else
exit
fi
