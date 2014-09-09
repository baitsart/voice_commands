#!/bin/bash

# Written by Rodrigo Esteves baitsart@gmail.com www.youtube.com/user/baitsart 
# GNU License. You are free to modify and redistribute   # 
lang="es"
[ -d ~/.voice_commands/Scripts/New_actions ] || mkdir ~/.voice_commands/Scripts/New_actions/
text_line=$(echo "ACTION_NAME=esta es una manera de decirlo\\|esta es otra manera")
	if [ -n "$1" ]; then
text_line=$(echo ""$@"=" | sed 's/  / /g;s/ /_/g' | tr '[:lower:]' '[:upper:]')
if echo "$@" | grep "="
	then
cmd_name=$( echo "$@" | sed 's/^[ ]*//' | sed 's/  / /g;s/ =/=/g' | cut -d'=' -f1 | sed 's/^[ ]*//'  )
orders=$( echo "$@" | sed 's/  / /g;s/= /=/g' | cut -d'=' -f2 | sed 's/;/\\|/g;s/ \\|/\\|/g;s/\\| /\\|/g;s/= /=/g;s/'"'"'/ /g;s/\"//g' | tr '[:upper:]' '[:lower:]' | sed 's/^[ ]*//' | sed 's/^[\\|]*//' | sed 's/^[ ]*//' | sed 's/^[\\|]*//' | sed 's/\\|*$//' | sed 's/ *$//' | sed 's/\\|*$//' | sed 's/ *$//' )
text_line=$(echo ""$cmd_name"="$orders"")
	fi
fi

new_cmd()
{
if option=$( zenity --entry --entry-text="$text_line" --text="Escriba el NOMBRE de la \"\$SRTING\" y el método de llamada, después de =. Separando entre las opciones con \\\| o ;\nA continuación, pulse \"Crear\" para editar la secuencia de comandos, que será ejecutada. O para \"Cancelar\" para salir" --title="Nueva configuración de comando" --width="650" --height="50" --ok-label="Crear" --cancel-label="Cancelar"); then
cmd_name=$( echo "$option" | sed 's/^[ ]*//' | sed 's/  / /g;s/ =/=/g' | cut -d'=' -f1 | sed 's/^[ ]*//'  )
string=$( echo "CMD_"$cmd_name"" | tr '[:lower:]' '[:upper:]' | sed 's/ /_/g;s/'"'"'//g;s/\"//g' )
orders=$( echo "$option" | sed 's/  / /g;s/= /=/g' | cut -d'=' -f2 | sed 's/;/\\|/g;s/ \\|/\\|/g;s/\\| /\\|/g;s/= /=/g;s/'"'"'/ /g;s/\"//g' | tr '[:upper:]' '[:lower:]' | sed 's/^[ ]*//' | sed 's/^[\\|]*//' | sed 's/^[ ]*//' | sed 's/^[\\|]*//' | sed 's/\\|*$//' | sed 's/ *$//' | sed 's/\\|*$//' | sed 's/ *$//' )
else
exit
fi
}
new_cmd

if [ -z "$option" ]; then
zenity --warning --text="La operación fue cancelada."
	exit 1
fi

if echo "$option" | grep -q -v "="; then
zenity --warning --text="La línea de comandos debe tener el \"=\", símbolo. Antes de que el\n comando de llamada al método, después the action name\n Inténtalo de nuevo, seguir los siguientes indicaciones."
text_line=$(echo ""$cmd_name"="$orders"")
	exit 0
fi

if [ -z "$string" ]; then
zenity --warning --text="La línea de comandos debe tener el \"=\", símbolo. Después de que el nombre de la acción\n Inténtalo de nuevo, seguir los siguientes indicaciones."
text_line=$(echo ""$cmd_name"="$orders"")
	exit 0
fi

if [ -z "$orders" ]; then
zenity --warning --text="La línea de comandos debe tener el \"=\", símbolo. Antes de que el\n comando de llamada al método, después the action name\n Inténtalo de nuevo, seguir los siguientes indicaciones."
text_line=$(echo ""$cmd_name"="$orders"")
	exit 0
fi

	if cut -d'=' -f1 ~/.voice_commands/"v-c LANGS"/commands-"$lang"  | grep -q -x "$string"; then
zenity --warning --text="El nombre de la acción: $cmd_name\nya se han utilizado\nSeleccione otro nombre.\n Inténtalo de nuevo, seguir los siguientes indicaciones."
	text_line=$(echo ""$cmd_name"="$orders"")
	exit 0
fi

	cmd_line=$( cut -d'=' -f2 ~/.voice_commands/"v-c LANGS"/commands-"$lang" )
	if echo "$cmd_line" | grep -q -x "$orders"; then
zenity --warning --text="La llamada al método sentencia: `echo "$cmd_line" | grep -x "$orders"` ya se han utilizado\nSólo hay que cambiar alguna palabra.\n Inténtalo de nuevo, seguir los siguientes indicaciones."
	text_line=$(echo ""$cmd_name"="$orders"")
	exit 0
fi
echo "#!/bin/sh
"$string"()
{
echo "'"'""'"'"
}
command_test=\$(echo "'"'"TEST"'"'")
	if [ \${command_test} = 'TEST' ]; then
		"$string"
	else
		echo "'"'"Rong characters"'"'"
	exit 1
	fi" > /tmp/script_test
if sh /tmp/script_test  2>&1 | grep "Syntax error: Bad function name" ; then
zenity --warning --text="El nombre de la acción tener caracteres no válidos\nNombre: "$string"\nSalida de error: \n \"Syntax error: Bad function name\"\n\nInténtalo de nuevo whit Alfa numeric símbolos [A-Z/0-9] "
	exit 1
fi

lines_num=$(wc -l ~/.voice_commands/speech_commands.sh | cut -d' ' -f 1)
line_paste=$( echo $lines_num - 8 | bc -l )
lines_num_cmd=$(wc -l ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d' ' -f 1)
line_paste_cmd=$( echo $lines_num_cmd + 1 | bc -l )
echo "#!/bin/bash
# File: ~/.voice_commands/Scripts/New_actions/$string
# Escriba aquí la línea comando , que se llame como: "'"'""$orders""'"'"
# El programa, run "'"'""$string""'"'", en el archivo, speech_commands.sh
# Puede cambiar, bash de su código fuente. Y será mejor quitar todas estas líneas innecesarias.
# El pedido completo de forma predeterminada, es en la entrada, del exec, es: language "'"'""\$1""'"'", y todo frase "'"'""\$@""'"'". Usted tal vez puede utilizar.
# Deben suprimir las que el # , la línea anterior comando.
# En estas líneas comando:
#
# lang="'"'"\$1"'"'"
# $string=\$(sed -n '"$line_paste_cmd"p' ~/.voice_commands/"'"'"v-c LANGS"'"'"/commands-"'"'"\$lang"'"'" | cut -d "'"'"="'"'" -f 2)
# UTTERANCE=\$(echo "'"'"\$@"'"'" | sed 's/'"'"'"\$lang"'"'"' //' )
# the_rest=\$(echo "'"'"\$UTTERANCE"'"'" | sed 's/'"'"'"\$"$string""'"'"'//' )" > ~/.voice_commands/Scripts/New_actions/"$string"
chmod +x ~/.voice_commands/Scripts/New_actions/"$string"
sed -i ''"$line_paste"'i\
\n\nrecog=\$(echo \"\$UTTERANCE\" | grep \"\$'"$string"'\" )\n\tif \[ \"\$recog\" != \"\" \]\n\tthen\n\tnotify-send \"Comando:\"  \"\$recog\"\nexec ~/.voice_commands/Scripts/New_actions/'"$string"' \"\$lang\" \"\$UTTERANCE\" \&\n\tmv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp\nexit 0;\nfi\n\n###################################################################' ~/.voice_commands/speech_commands.sh

sed -i '125i\
'"$string"'=\$(sed -n '"'"''"$line_paste_cmd"'p'"'"' ~/.voice_commands/\"v-c LANGS\"/commands-\"\$lang\" | cut -d \"=\" -f 2)' ~/.voice_commands/speech_commands.sh
cat ~/.voice_commands/Scripts/languages | while read line; do
TO=$(echo "$line" | awk '{ print $1 }')
echo ""$string"="$orders"" >> ~/.voice_commands/"v-c LANGS"/commands-"$TO"; done
v-c -u
gedit ~/.voice_commands/Scripts/New_actions/"$string" &
notify-send "Se ha creado el nuevo comando:" "$string"
if zenity --question --text="¿Quiere traducir a los demás idiomas, su nuevo comando ?";then
sh ~/.voice_commands/Scripts/translator.sh ""$string"="$orders"" 2>&1  | awk -vRS="\r" '$1 ~ /Porcentaje:/ {gsub(/Porcentaje:/," ");gsub(/%\)/," ");gsub(/ \(/," ");print $1"\n# Proceso de traducción.\\n\\n"$2": \\t\\t"$3"\\n\\nPorcentaje:\\t"$1; fflush();}' | zenity --progress --auto-close --no-cancel --ok-label="Quit" --width="270" --height="130" --title=" Progreso..." 
rm /tmp/script_test
if [ -f ~/.voice_commands/Scripts/New_actions/"$string"~ ]; then
rm ~/.voice_commands/Scripts/New_actions/"$string"~
fi
exit 0
	else
	rm /tmp/script_test
if [ -f ~/.voice_commands/Scripts/New_actions/"$string"~ ]; then
rm ~/.voice_commands/Scripts/New_actions/"$string"~
fi
exit
fi
