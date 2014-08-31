#!/bin/bash
microphe_port="$1"
input="$2"
echo `pacmd set-source-port "$microphe_port" "analog-input-microphone"$input""` > /tmp/mic_port_errors
port_errors=$(cat /tmp/mic_port_errors | cut -d '>' -f4)
if grep -q "No source found by this name or index\|Failed to set source port to" /tmp/mic_port_errors;then
echo "
Entrada incorrecta para configurar el puerto , la configuración del micrófono . :

gnome-control-center sound input

Y prueba, demostrando que el micrófono es el correcto , si es Micrófono, ( no Interna Micrófono ), el comando será:

 « v-c -mic '1, 2,...' »

 y , si es Micrófono / Micrófono '1, 2,...', entonces será:

 « v-c -mic '1, 2,...' input-'1, 2,...' »
 « v-c -mic '1, 2,...' input-' ' » [ vacío para 'restablecer' a ningún "'"'";input-"'"'" ]

 para tenerlo configurado.

Comando de salida:
 'pacmd set-source-port "$microphe_port" 'analog-input-microphone"$input"''
 Mensaje:
"$port_errors"

Inténtelo de nuevo , con indicaciones anteriores , la buena suerte!
"
rm /tmp/mic_port_errors
exit 1
fi
echo "$microphe_port" > ~/.voice_commands/"v-c LANGS"/Scripts/microphone_port ~/.voice_commands/"v-c LANGS"/Scripts/micro_config.sh
echo "$input_opt" > ~/.voice_commands/"v-c LANGS"/Scripts/input_port ~/.voice_commands/"v-c LANGS"/Scripts/micro_config.sh
echo "
La configuración del micrófono, ahora es con este puertos:

pacmd set-source-port "$microphe_port" 'analog-input-microphone"$input"'
"
rm /tmp/mic_port_errors
exit 0

