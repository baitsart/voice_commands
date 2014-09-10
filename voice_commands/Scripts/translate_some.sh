#!/bin/bash
web_host=$(echo `ping -c 1 www.google.com`)
if [ -z "$web_host" ] ; then
	notify-send "No hay internet"
exit
fi
[ -d ~/.voice_commands/Scripts/New_actions ] || mkdir /usr/bin/voice_commands/Scripts/New_actions/
actions_new=$(echo `ls -1  ~/.voice_commands/Scripts/New_actions/`)
if [ -z "$actions_new" ] ; then
	notify-send "Crear algo de acción, primero" "Usted no crea ninguna nueva acción, para ser traducido"
exit
fi
TO="es"
lines=$(echo "$actions_new" | tr '\n' ' ' | sed 's/ /\\\|/g' | sed 's/\\|*$//')
if selection=$(cat ~/.voice_commands/"v-c LANGS"/commands-"$TO" | grep ""$lines"=" |  zenity --list --width="750" --height="550" --column="Escoja uno" --title="Traducir algún comando" --text="¿Qué comando quieres traducir ?");then

string=$( echo "$selection" | cut -d'=' -f1 )
orders=$( echo "$selection" | cut -d'=' -f2 )
sh ~/.voice_commands/Scripts/translator.sh ""$string"="$orders"" 2>&1  | awk -vRS="\r" '$1 ~ /Porcentaje:/ {gsub(/Porcentaje:/," ");gsub(/%\)/," ");gsub(/ \(/," ");print $1"\n# Proceso de traducción.\\n\\n"$2": \\t\\t"$3"\\n\\nPorcentaje:\\t"$1; fflush();}' | zenity --progress --auto-close --no-cancel --ok-label="Quit" --width="270" --height="130" --title=" Progreso..." 
exit 1
else
exit
fi
