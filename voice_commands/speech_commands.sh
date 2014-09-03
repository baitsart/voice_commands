#!/bin/bash

# Escrito por Rodrigo Esteves baitsart@gmail.com www.youtube.com/user/baitsart 
# Licencia GNU. Eres libre de modificar y redistribuir   # 

lang="$1"
key="AIzaSyBOti4mM-6x9WDnZIjIeyEU21OpBXqWBgw"
recording=3
microphe_port=$(sed -n '1p' ~/.voice_commands/Scripts/microphone_port | cut -d '=' -f2)
input=$(sed -n '1p' ~/.voice_commands/Scripts/input_port | cut -d '=' -f2)
SONGS_PATH="$HOME/.voice_commands/sounds/ringtones"
UTTERANCE=$(cat /tmp/speech_recognition.tmp | sed "s/  / /g" )

CMD_SELECT_FILE=$(sed -n '1p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MUSIC_START=$(sed -n '2p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MUSIC_START_SONG=$(sed -n '3p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MUSIC_PLAY=$(sed -n '4p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MUSIC_NEXT=$(sed -n '5p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MUSIC_PREV=$(sed -n '6p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MUSIC_SHUFFLE=$(sed -n '7p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MUSIC_REPEAT=$(sed -n '8p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MEDIA_REW=$(sed -n '9p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MEDIA_FF=$(sed -n '10p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_VOLUME_DOWN=$(sed -n '11p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_VOLUME_UP=$(sed -n '12p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_VOLUME_MUTE=$(sed -n '13p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SEARCH=$(sed -n '14p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_NO_STAND_OUT=$(sed -n '15p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_TRANSLATE=$(sed -n '16p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_WRITE=$(sed -n '17p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_WRITE_CAPITAL=$(sed -n '18p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_WRITE_CAPITAL_ALL=$(sed -n '19p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SAY_THIS=$(sed -n '20p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_GOOGLE_SEARCH=$(sed -n '21p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_YOUTUBE_SEARCH=$(sed -n '22p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_WIKI_SEARCH=$(sed -n '23p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_WEATHER=$(sed -n '24p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SEARCH_MAPS=$(sed -n '25p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SAY_HI=$(sed -n '26p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_HELLO=$(sed -n '27p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_WHOAMI=$(sed -n '28p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_OPEN_FOLDER=$(sed -n '29p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_OPEN_FOLDER_OF=$(sed -n '30p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SAY_TIME=$(sed -n '31p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SAY_DATE=$(sed -n '32p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_DICTATION=$(sed -n '33p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_UNDO=$(sed -n '34p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_REDO=$(sed -n '35p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_DEL_LINE=$(sed -n '36p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_FAV=$(sed -n '37p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_CLOSE_TERM=$(sed -n '38p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MAIL=$(sed -n '39p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_COPY=$(sed -n '40p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_PASTE=$(sed -n '41p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_CUT=$(sed -n '42p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SELECT_ALL=$(sed -n '43p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SAVE=$(sed -n '44p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SAVE_AS=$(sed -n '45p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_FOLDER=$(sed -n '46p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MINIMISE=$(sed -n '47p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MAXIMISE=$(sed -n '48p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_FULLSCREEN=$(sed -n '49p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_TAB=$(sed -n '50p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_ESC=$(sed -n '51p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_MENU=$(sed -n '52p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_ACTIONS_MENU=$(sed -n '53p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_CLOSE=$(sed -n '54p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_CLOSE_WIN=$(sed -n '55p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_ZOOM_OUT=$(sed -n '56p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_ZOOM_IN=$(sed -n '57p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_ZOOM_RESET=$(sed -n '58p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_TOUCH_ON_OFF=$(sed -n '59p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_BACK=$(sed -n '60p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_ADVANCE=$(sed -n '61p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_RIGHT=$(sed -n '62p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_LEFT=$(sed -n '63p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_DOWN=$(sed -n '64p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_UP=$(sed -n '65p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_PAGE_DOWN=$(sed -n '66p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_PAGE_UP=$(sed -n '67p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_HOME_PAGE=$(sed -n '68p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_END_PAGE=$(sed -n '69p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_HOME=$(sed -n '70p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_END=$(sed -n '71p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SCROLL_DOWN=$(sed -n '72p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SCROLL_UP=$(sed -n '73p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_DELETE=$(sed -n '74p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_ENTER=$(sed -n '75p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_NEW_WINDOW=$(sed -n '76p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_CHANGE_TAB=$(sed -n '77p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_CLOSE_TAB=$(sed -n '78p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_BROWSER=$(sed -n '79p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_FILE_MANAGER=$(sed -n '80p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_TERMINAL=$(sed -n '81p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_EXECUTE=$(sed -n '82p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_BATTERY=$(sed -n '83p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_TEXT_EDITOR=$(sed -n '84p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_SCREENSHOT=$(sed -n '85p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_ALARM=$(sed -n '86p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_LOG_OFF=$(sed -n '87p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_BRIGHTNESS_UP=$(sed -n '88p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_BRIGHTNESS_DOWN=$(sed -n '89p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_POWER_OFF=$(sed -n '90p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_CALCULATOR=$(sed -n '91p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Sum=$(sed -n '92p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Rest=$(sed -n '93p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Multiplication=$(sed -n '94p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Division=$(sed -n '95p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Square=$(sed -n '96p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Percent=$(sed -n '97p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Root=$(sed -n '98p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Dot=$(sed -n '99p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Comma=$(sed -n '100p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_TAKE_PICTURE=$(sed -n '101p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_TAKE_VIDEO=$(sed -n '102p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_OPEN_FILE=$(sed -n '103p' /usr/bin/voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
CMD_OFFICE=$(sed -n '104p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Writer=$(sed -n '105p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Calc=$(sed -n '106p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Impress=$(sed -n '107p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Draw=$(sed -n '108p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
Math=$(sed -n '109p' ~/.voice_commands/"v-c LANGS"/commands-"$lang" | cut -d "=" -f 2)
# CMD_RETRY ' It is in /usr/bin/voice_commands/play_stop.sh, and is refer to line 110 '





###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_SELECT_FILE" )
	if [ "$recog" != "" ]
	then
	file=$(echo "$UTTERANCE" | sed 's/'"$CMD_SELECT_FILE"' //g;s/'"$CMD_SELECT_FILE"'//')
xdotool type "$file"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 1
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MUSIC_START" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	rhythmbox-client --play-pause 
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep "$CMD_MUSIC_START_SONG" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	line=$(echo "$UTTERANCE" | sed 's/'"$CMD_MUSIC_START_SONG"' //g;s/'"$CMD_MUSIC_START_SONG"'//' )
	name=$(echo "$line")
	rhythmbox-client && sleep 1 && xdotool key "Ctrl+f" && xdotool type "$name" && rhythmbox-client --play && sleep 1 && rhythmbox-client --next
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MUSIC_PLAY" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key XF86AudioPlay 
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MUSIC_NEXT" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key XF86AudioNext 
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MUSIC_PREV" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key XF86AudioPrev 
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MUSIC_SHUFFLE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key XF86AudioRandomPlay 
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MUSIC_REPEAT" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key XF86AudioRepeat
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MEDIA_REW" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key XF86FrameBack
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MEDIA_FF" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key XF86FrameForward
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_VOLUME_DOWN" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key XF86AudioLowerVolume
	xdotool key XF86AudioLowerVolume
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_VOLUME_UP" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key XF86AudioRaiseVolume
	xdotool key XF86AudioRaiseVolume
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_VOLUME_MUTE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key XF86AudioMute 
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_NO_STAND_OUT" )
	if [ "$recog" != "" ]
	then
xdotool key "Ctrl+Shift+k"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -v "$CMD_WRITE_CAPITAL" | grep -v "$CMD_WRITE_CAPITAL_ALL" | awk '{print $1}' | grep -x "$CMD_WRITE")
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	line=$(echo "$UTTERANCE" | sed 's/'"$CMD_WRITE"' //g;s/'"$CMD_WRITE"'//' )

xdotool type "$line"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_WRITE_CAPITAL" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	line=$(echo "$UTTERANCE" | sed 's/'"$CMD_WRITE_CAPITAL"' //g;s/'"$CMD_WRITE_CAPITAL"'//'| sed 's/.*/\u&/'  )

xdotool type "$line"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_WRITE_CAPITAL_ALL" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	line=$(echo "$UTTERANCE" | sed 's/'"$CMD_WRITE_CAPITAL_ALL"' //g;s/'"$CMD_WRITE_CAPITAL_ALL"'//' )

xdotool type "$line"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep "$CMD_TRANSLATE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	FROM=$(echo "$UTTERANCE" | sed 's/'"$CMD_TRANSLATE"' //g;s/'"$CMD_TRANSLATE"'//' | awk '{print $1}')
	TO=$(echo "$UTTERANCE" | sed 's/'"$CMD_TRANSLATE"' //g;s/'"$CMD_TRANSLATE"'//' | sed 's/'"$FROM"' al //' | sed 's/'"$FROM"' hacia el//' | sed 's/'"$FROM"' hacia //' | sed 's/'"$FROM"' a el //' | sed 's/'"$FROM"' a //' | awk '{print $1}')

	TEXT=$(echo "$UTTERANCE" | sed 's/'"$CMD_TRANSLATE"' //g;s/'"$CMD_TRANSLATE"'//' | sed 's/ '"$FROM"' al '"$TO"' //' | sed 's/ '"$FROM"' hacia el '"$TO"' //' | sed 's/ '"$FROM"' hacia '"$TO"' //' | sed 's/ '"$FROM"' a el '"$TO"' //' | sed 's/ '"$FROM"' a '"$TO"' //')

echo "af africano
ar árabe
az azerbaiyán
be bielorruso
bg búlgaro
bn bengalí
ca catalán
cs checo
cy galés
da danés
de alemán
el griego
en inglés
eo esperanto
es español
et estonia
eu vasco
fa persa
fi finlandés
fr francés
ga irlandés
gl gallego
gu gujarati
hi hindi
hr croata
ht haitiano
hu húngaro
hy armenio
id indonesio
is islandés
it italiano
iw hebreo
ja japonés
ka georgiano
km khmer
kn canarés
ko coreano
la latino
lo lao
lt lituano
lv letón
mk macedonio
ms malayo
mt maltés
nl holandés
no noruego
pl polaco
pt portugués
ro rumano
ru ruso
sk eslovaco
sl esloveno
sq albanés
sr serbio
sv sueco
sw medio
ta tamil
te telugu
th tailandés
tl filipino
tr turco
uk ucranio
ur urdu
vi vietnamita
yi yídish
zh-CN chino" > /tmp/lang

if cat /tmp/lang | cut -d' ' -f2 | grep -x -q "$FROM"; then
	from=$( cat /tmp/lang  | grep "$FROM" | awk '{print $1}')
else
	from="$lang"
fi

if cat /tmp/lang | cut -d' ' -f2 | grep -x -q "$TO"; then
	to=$( cat /tmp/lang  | grep "$TO" | awk '{print $1}')
else
	to="en"
fi
echo "Traducir de `cat /tmp/lang | grep  "$from " | cut -d' ' -f2` a `cat /tmp/lang | grep  "$to " | cut -d' ' -f2`: `echo "$TEXT" `"

	xdg-open "http://translate.google.com/?hl="$lang"#"$from"/"$to"/$(python -c "import urllib; print urllib.quote('''$TEXT''')")"
	rm /tmp/lang
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | awk '{print $1, $2}' | grep -x "$CMD_SAY_THIS" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	the_text_encoded=$(echo "$UTTERANCE" | sed 's/'"$CMD_SAY_THIS"' //g;s/'"$CMD_SAY_THIS"'//')
wget -A.mp3 -U "\"Mozillla\"" -O "/tmp/say_this.mp3" "http://translate.google.com/translate_tts?tl="$lang"&q=$(python -c "import urllib; print urllib.quote('''$the_text_encoded''')")&ie=UTF-8"
audacious /tmp/say_this.mp3
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep "$CMD_GOOGLE_SEARCH" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	SEARCH=$(echo "$UTTERANCE" | sed 's/'"$CMD_GOOGLE_SEARCH"' //g;s/'"$CMD_GOOGLE_SEARCH"'//')
	echo "$SEARCH"
	xdg-open "http://www.google.com/search?q=$(python -c "import urllib; print urllib.quote('''$SEARCH''')")" &
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | awk '{print $1, $2, $3}'| grep "$CMD_YOUTUBE_SEARCH" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	SEARCH=$(echo "$UTTERANCE" | sed 's/'"$CMD_YOUTUBE_SEARCH"' //g;s/'"$CMD_YOUTUBE_SEARCH"'//')
	echo "$SEARCH"
	xdg-open "http://www.youtube.com/results?search_query=$(python -c "import urllib; print urllib.quote('''$SEARCH''')")" &
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep "$CMD_WIKI_SEARCH" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	SEARCH=$(echo "$UTTERANCE" | sed 's/'"$CMD_WIKI_SEARCH"' //g;s/'"$CMD_WIKI_SEARCH"'//')
	echo "$SEARCH"
	xdg-open "http://"$lang".wikipedia.org/w/index.php?search=$(python -c "import urllib; print urllib.quote('''$SEARCH''')")" &
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep "$CMD_WEATHER" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	PLACE=$(echo "$UTTERANCE" | sed 's/'"$CMD_WEATHER"' //g;s/'"$CMD_WEATHER"'//')
	xdg-open "https://www.google.com/#q=weather+$(python -c "import urllib; print urllib.quote('''$PLACE''')")&hl="$lang"&safe=off" &
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep "$CMD_SEARCH_MAPS" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	PLACE=$(echo "$UTTERANCE" | sed 's/'"$CMD_SEARCH_MAPS"' //g;s/'"$CMD_SEARCH_MAPS"'//')

	xdg-open "https://maps.google.com/maps?hl="$lang"&q=$(python -c "import urllib; print urllib.quote('''$PLACE''')")" &
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | awk '{print $1}' | grep -x "$CMD_SEARCH" )
	if [ "$recog" != "" ]
	then
	name=$(echo "$UTTERANCE" | sed 's/'"$CMD_SEARCH"' //g;s/'"$CMD_SEARCH"'//')
xdotool key "Ctrl+f" && xdotool type "`echo $name`"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################



recog=$(echo "$UTTERANCE" | awk '{print $1, $2}' | grep "$CMD_SAY_HI" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	name=$(echo "$UTTERANCE" | sed 's/'"$CMD_SAY_HI"' //g;s/'"$CMD_SAY_HI"'//')
	the_text_encoded=$(echo "Hola "$name" ¡Qué tenga un buen día!")
wget -A.mp3 -U "\"Mozillla\"" -O "/tmp/say_hi_to.mp3" "http://translate.google.com/translate_tts?tl="$lang"&q=$(python -c "import urllib; print urllib.quote('''$the_text_encoded''')")&ie=UTF-8"
audacious /tmp/say_hi_to.mp3
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_HELLO" )
	if [ "$recog" != "" ]
	then
	notify-send "Command:"  "$recog"
	the_text_encoded=$(echo "Hola `whoami`, Que tenga un buen día!")
wget -A.mp3 -U "\"Mozillla\"" -O "/tmp/user-is-it.mp3" "http://translate.google.com/translate_tts?tl="$lang"&q=$(python -c "import urllib; print urllib.quote('''$the_text_encoded''')")&ie=UTF-8"
audacious /tmp/user-is-it.mp3 
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_WHOAMI" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	the_text_encoded=$(echo "Tu nombre de usario es `whoami`")
wget -A.mp3 -U "\"Mozillla\"" -O "/tmp/user-is-it.mp3" "http://translate.google.com/translate_tts?tl="$lang"&q=$(python -c "import urllib; print urllib.quote('''$the_text_encoded''')")&ie=UTF-8"
audacious /tmp/user-is-it.mp3 
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep "$CMD_OPEN_FOLDER\|$CMD_OPEN_FOLDER_OF" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
     command_line=$(echo "$recog" | sed 's/'"$CMD_OPEN_FOLDER"' //g;s/'"$CMD_OPEN_FOLDER_OF"' //' | awk '{print $1}' )

folder=$(find -maxdepth 1 -type d -print | sed 's|./||g' | grep -i "$command_line")
cd $HOME/"$folder"
directory=$(find -maxdepth 1 -type d -print | sed 's|./||g' | grep -i "$command_line" )
cd
sub_folder=$(echo "$UTTERANCE" | sed 's/'"$CMD_OPEN_FOLDER"' '"$command_line"' //g;s/'"$CMD_OPEN_FOLDER_OF"' '"$command_line"' //g' )

if [ -d $HOME/"$folder/$sub_folder" ]; then
nautilus $HOME/"$folder/$sub_folder"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi
if [ -d $HOME/"$folder/$directory" ]; then
nautilus $HOME/"$folder/$directory"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi
if echo "$UTTERANCE" | grep -x -i "$CMD_OPEN_FOLDER $command_line\|$CMD_OPEN_FOLDER_OF $command_line"; then
nautilus $HOME/"$folder"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

cd $HOME/"$folder"
sub_folder=$(find -maxdepth 1 -type d -print | sed 's|./||g' | grep -i "$directory" )
if [ -d $HOME/"$folder/$sub_folder" ]; then
nautilus $HOME/"$folder/$sub_folder"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

sub_folder=$(echo "$UTTERANCE" | sed 's/'"$CMD_OPEN_FOLDER"' '"$command_line"' //g;s/'"$CMD_OPEN_FOLDER_OF"' '"$command_line"' //g' )

[[ -d $HOME/"$folder/$sub_folder" ]] || echo `find $HOME/"$folder" -type d -name "*" -print | grep -i "$sub_folder" | grep -v -i "$sub_folder"/ ` | sed 's|'"$HOME"'|\n'"$HOME"'|g' | while read LINE
do
    if [ -d "$LINE" ]
    then
       nautilus "$LINE"
fi

done
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi
###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_SAY_TIME" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
the_text_encoded=$(echo "Son las: `date +%k` y `date +%M` minutos, con `date +%S` segúndos")
wget -A.mp3 -U "\"Mozillla\"" -O "/tmp/time-is-it.mp3" "http://translate.google.com/translate_tts?tl="$lang"&q=$(python -c "import urllib; print urllib.quote('''$the_text_encoded''')")&ie=UTF-8"
audacious /tmp/time-is-it.mp3 
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_SAY_DATE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
the_text_encoded=$(echo "Hoy es: `date +%A` `date +%d` de `date +%B` del `date +%Y`")
wget -A.mp3 -U "\"Mozillla\"" -O "/tmp/time-is-it.mp3" "http://translate.google.com/translate_tts?tl="$lang"&q=$(python -c "import urllib; print urllib.quote('''$the_text_encoded''')")&ie=UTF-8"
audacious /tmp/time-is-it.mp3 
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_DICTATION" )
	if [ "$recog" != "" ]
	then
recognise()
{
process="$1"

if [ -f /tmp/dictation_mode/voice_"$process".flac ]; then

talk=`curl -s -X POST \
--data-binary @/tmp/dictation_mode/voice_"$process".flac \
--header 'Content-Type: audio/x-flac; rate=16000;' \
'https://www.google.com/speech-api/v2/recognize?output=json&lang='$lang'&key='$key'' | cut -d\" -f8 `
JSON=$(echo "$talk" | sed '/^$/d' )

line=$(echo "$JSON" | tr '\n' ' ' | sed 's/  / /g' | sed 's/^[ ]*//' )
if echo "$line" | grep -v -q "Your client does not have permission to get URL" ; then
if [ -n "$line" ]; then
xdotool type "`echo "$line "`"
echo -e ""$line"\\r"
fi
fi
rm /tmp/dictation_mode/voice_"$process".flac  2>/dev/null
fi
}
record()
{
number_of_process=$(cat /tmp/dictation_mode/number_of_process)
let 'number_process = number_of_process + 1'
echo "$number_process" > /tmp/dictation_mode/number_of_process
if [ "$number_process" = 12 ]; then
echo "0" > /tmp/dictation_mode/number_of_process
notify-send -i "/usr/share/icons/hicolor/48x48/apps/audio-recorder-on.png" "Modo dicatado" "Grabando..."
fi
arecord -q -f cd -t wav -d "$recording" -r 16000 | flac - -f --best --sample-rate 16000 -o /tmp/dictation_mode/voice_.flac  2>/dev/null

mv /tmp/dictation_mode/voice_.flac /tmp/dictation_mode/voice_"$number_process".flac
recognise "$number_process" &
record
}
if [ -f /tmp/dictation_mode/line_of_process ] ; then
notify-send -i "/usr/share/icons/hicolor/48x48/apps/audio-recorder-off.png" "Fin de la grabación..." 
script_process=$(cat /tmp/dictation_mode/line_of_process)
kill -HUP "$script_process"
rm -rf /tmp/dictation_mode
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
sh /tmp/if_internal_active
rm /tmp/if_internal_active
rm /tmp/progress_active
if [ -f /tmp/port_errors ] ; then
rm /tmp/port_errors
fi
exit 1;
fi
mkdir /tmp/dictation_mode/
echo "$$" > /tmp/dictation_mode/line_of_process
notify-send -i "/usr/share/icons/hicolor/48x48/apps/audio-recorder-on.png" "Grabando..." 
echo "Resultado:"
echo "0" > /tmp/dictation_mode/number_of_process
echo "echo -n "'"'"                                "'"'"\\\\r" > /tmp/if_internal_active
ports=$(pacmd list-sources | grep "active port")
if echo "$ports" | grep -q -v "active port: <analog-input-microphone>\|active port: <analog-input-microphone;"; then
v-c -mic "$microphe_port" >/tmp/port_errors
if sed -n '2p' /tmp/port_errors | grep -q -v "La configuración del micrófono, ahora es con este puertos:"; then
cat /tmp/port_errors
rm /tmp/port_errors
rm /tmp/line_of_process
rm /tmp/process_result
rm /tmp/if_internal_active
exit 1
fi
echo "pacmd set-source-port "$microphe_port" '`echo "$ports" | cut -d'>' -f1 | cut -d'<' -f2 `'  >/tmp/port_errors && echo -n "'"'"                                "'"'"\\\\r"  > /tmp/if_internal_active
fi

record

	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_UNDO" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+z"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_REDO" )
	if [ "$recog" != "" ]
	then
	notify-send "Command:"  "$recog"
	xdotool key "Ctrl+Shift+z"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_FAV\|$CMD_DEL_LINE\|$CMD_CLOSE_TERM" )
	if [ "$recog" != "" ]
	then
	notify-send "Command:"  "$recog"
	xdotool key "Ctrl+d"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MAIL" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	exo-open --launch MailReader
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_COPY" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+c"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_PASTE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+v"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_CUT" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+x"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_SELECT_ALL" )
	if [ "$recog" != "" ]
	then
	xdotool key "Ctrl+a"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 1
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_SAVE" )
	if [ "$recog" != "" ]
	then
	xdotool key "Ctrl+s"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 1
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_SAVE_AS" )
	if [ "$recog" != "" ]
	then
	xdotool key "Ctrl+Shift+s"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 1
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_FOLDER" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+Shift+n"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MINIMISE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+Alt+0"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MAXIMISE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+Alt+5"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_FULLSCREEN" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "F11"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_TAB" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Tab"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_ESC" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Escape"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_MENU" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Alt+F1"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_ACTIONS_MENU" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "F10"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_CLOSE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+q"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_CLOSE_WIN" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+w"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_ZOOM_OUT" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "XF86ZoomOut"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_ZOOM_IN" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "XF86ZoomIn"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_TOUCH_ON_OFF" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "XF86TouchpadToggle"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################

recog=$(echo "$UTTERANCE" | grep -x "$CMD_ZOOM_RESET" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+0"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_BACK" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Alt+Left"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_ADVANCE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Alt+Right"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_RIGHT" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Right"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_LEFT" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Left"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_DOWN" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Down"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_UP" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Up"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_PAGE_UP" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key KP_Page_Up
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_HOME_PAGE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+Home"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_END_PAGE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+End"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_HOME" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Home"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_END" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "End"
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_SCROLL_DOWN" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
win=`xdotool getactivewindow`

xdotool mousemove --window $win 45 110 

xdotool click --clearmodifiers 5
sleep 0.2
xdotool click --clearmodifiers 5
sleep 0.2
xdotool click --clearmodifiers 5
sleep 0.2
xdotool click --clearmodifiers 5
sleep 0.2
xdotool click --clearmodifiers 5
sleep 0.2
xdotool click --clearmodifiers 5
sleep 0.2
xdotool click --clearmodifiers 5
sleep 0.2
xdotool click --clearmodifiers 5
sleep 0.2
xdotool click --clearmodifiers 5
sleep 0.2
xdotool click --clearmodifiers 5
sleep 0.2
xdotool click --clearmodifiers 5

mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_SCROLL_UP" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
win=`xdotool getactivewindow`

xdotool mousemove --window $win 45 110 

xdotool click --clearmodifiers 4
sleep 0.2
xdotool click --clearmodifiers 4
sleep 0.2
xdotool click --clearmodifiers 4
sleep 0.2
xdotool click --clearmodifiers 4
sleep 0.2
xdotool click --clearmodifiers 4
sleep 0.2
xdotool click --clearmodifiers 4
sleep 0.2
xdotool click --clearmodifiers 4
sleep 0.2
xdotool click --clearmodifiers 4
sleep 0.2
xdotool click --clearmodifiers 4
sleep 0.2
xdotool click --clearmodifiers 4
sleep 0.2
xdotool click --clearmodifiers 4

mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_PAGE_DOWN" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key KP_Page_Down
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_DELETE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Delete"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_ENTER" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key KP_Enter
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_NEW_WINDOW" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+n"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep "$CMD_CHANGE_TAB" )
	if [ "$recog" != "" ]
	then
	winds=$(echo "$UTTERANCE" | sed 's/'"$CMD_CHANGE_TAB"' //g;s/'"$CMD_CHANGE_TAB"'//g;s/ //g;s/diez/010/g;s/once/011/g;s/doce/012/g;s/trece/013/g;s/catorce/014/g;s/quince/015/g;s/dieciséis/016/g;s/dieci/01/g;s/veinte/020/g;s/veinti/020/g;s/treintay/03/g;s/cuarentay/040/g;s/cincuentay/050/g;s/sesentay/060/g;s/setentay/070/g;s/ochentay/080/g;s/noventay/090/g;s/treintai/030/g;s/treinta/030/g;s/cuarentai/040/g;s/cuarenta/040/g;s/cincuentai/050/g;s/cincuenta/050/g;s/sesentai/060/g;s/sesenta/060/g;s/setentai/070/g;s/setenta/070/g;s/ochentai/080/g;s/ochenta/080/g;s/noventai/090/g;s/noventa/090/g;s/doscientos/200/g;s/trescientos/300/g;s/cuatrocientos/400/g;s/quinientos/500/g;s/seiscientos/600/g;s/setecientos/700/g;s/ochocientos/800/g;s/novecientos/900/g;s/ciento/100/g;s/cien/100/g;s/uno/01/g;s/un/01/g;s/dos/02/g;s/tres/03/g;s/cuatro/04/g;s/cinco/05/g;s/seis/06/g;s/siete/07/g;s/ocho/08/g;s/nueve/09/g;s/016/16/g;s/017/17/g;s/018/18/g;s/019/19/g;s/020/20/g;s/030/30/g;s/040/40/g;s/050/50/g;s/060/60/g;s/070/70/g;s/080/80/g;s/090/90/g;s/001/1/g;s/002/2/g;s/003/3/g;s/004/4/g;s/005/5/g;s/006/6/g;s/007/7/g;s/008/8/g;s/009/9/g' | sed 's/^[0]*//' )
	echo "Número `echo $winds`"
	xdotool key Alt+`echo $winds`
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_CLOSE_TAB" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+w"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_BROWSER" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	exo-open --launch WebBrowser
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_FILE_MANAGER" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	exo-open --launch FileManager
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_TERMINAL" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	exo-open --launch TerminalEmulator
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_EXECUTE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Alt+F2"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_BATTERY" )
	if [ "$recog" != "" ]
	then
	command=`acpi -b`

        if echo "$command" | grep -q "Full, 100%"; then
	message=$(echo "Carga completa: 100%")
fi
        pcent=$(echo "$command" | cut -d' ' -f4 | cut -d',' -f1)
        rtime=$(echo "$command" | cut -d',' -f3 | cut -d' ' -f2)
	notify_time=$(echo "$rtime" | sed 's/:/ horas, /' | sed 's/:/ minutos, /')
        if echo "$command" | grep -q "Charging"; then
                message=$( echo "Cargando: "$pcent"\n"$notify_time" segundos. Antes de completar la carga")
            elif
		echo "$command" | grep -q "Discharging"; then
                message=$( echo "Descargandose: "$pcent"\n"$notify_time" segundos, restantes")
fi
        echo "$message"


wget -A.mp3 -U "\"Mozillla\"" -O "/tmp/how-battery-is-it.mp3" "http://translate.google.com/translate_tts?tl="$lang"&q=$(python -c "import urllib; print urllib.quote('''$message''')")&ie=UTF-8"
audacious /tmp/how-battery-is-it.mp3
    rm /tmp/how-battery-is-it.mp3
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_TEXT_EDITOR" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	gedit
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_TAKE_PICTURE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	cheese & sleep 2s
	xdotool type " "
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_TAKE_VIDEO" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	cheese & sleep 2s
	xdotool key "Tab"
	xdotool key "Tab"
	xdotool key KP_Enter
	xdotool type " "
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | awk '{print $1}' | grep -x "$CMD_ALARM" )
	if [ "$recog" != "" ]
	then
	number=$(echo "$UTTERANCE" | sed 's/'"$CMD_ALARM"' //g;s/'"$CMD_ALARM"'//g;s/ y/y/g;s/treinta y/030/g;s/cuarenta y/040/g;s/cincuenta y/050/g;s/sesenta y/060/g;s/setenta y/070/g;s/ochenta y/080/g;s/noventa y/090/g;s/diez/010/g;s/once/011/g;s/doce/012/g;s/trece/013/g;s/catorce/014/g;s/quince/015/g;s/dieciséis/016/g;s/dieci/01/g;s/veinte/020/g;s/veinti/020/g;s/treintai/030/g;s/treinta/030/g;s/cuarentai/040/g;s/cuarenta/040/g;s/cincuentai/050/g;s/cincuenta/050/g;s/sesentai/060/g;s/sesenta/060/g;s/setentai/070/g;s/setenta/070/g;s/ochentai/080/g;s/ochenta/080/g;s/noventai/090/g;s/noventa/090/g;s/doscientos/200/g;s/trescientos/300/g;s/cuatrocientos/400/g;s/quinientos/500/g;s/seiscientos/600/g;s/setecientos/700/g;s/ochocientos/800/g;s/novecientos/900/g;s/ciento/100/g;s/cien/100/g;s/uno/01/g;s/un/01/g;s/dos/02/g;s/tres/03/g;s/cuatro/04/g;s/cinco/05/g;s/seis/06/g;s/siete/07/g;s/ocho/08/g;s/nueve/09/g;s/016/16/g;s/017/17/g;s/018/18/g;s/019/19/g;s/020/20/g;s/030/30/g;s/040/40/g;s/050/50/g;s/060/60/g;s/070/70/g;s/080/80/g;s/090/90/g;s/001/1/g;s/002/2/g;s/003/3/g;s/004/4/g;s/005/5/g;s/006/6/g;s/007/7/g;s/008/8/g;s/009/9/g;s/ 0/ /g' )
	time="`echo $number | sed 's/^[0]*//'`"
	if echo "$time" | awk '{print $2}' | head -c 1 | grep -q "d"; then
	day="`echo "$time" | awk '{print $1}'` dias"
	length_d="`echo "$time" | awk '{print $1}'`d "
fi
	if echo "$time" | awk '{print $2}' | head -c 1 | grep -q "h"; then
	hour="`echo "$time" | awk '{print $1}'` horas"
	length_h="`echo "$time" | awk '{print $1}'`h "
fi
	if echo "$time" | awk '{print $4}' | head -c 1 | grep -q "h"; then
	hour="`echo "$time" | awk '{print $3}'` horas"
	length_h="`echo "$time" | awk '{print $3}'`h "
fi
	if echo "$time" | awk '{print $2}' | head -c 1 | grep -q "m"; then
	min="`echo "$time" | awk '{print $1}'` minutos"
	length_m="`echo "$time" | awk '{print $1}'`m "
fi
	if echo "$time" | awk '{print $4}' | head -c 1 | grep -q "m"; then
	min="`echo "$time" | awk '{print $3}'` minutos"
	length_m="`echo "$time" | awk '{print $3}'`m "
fi
	if echo "$time" | awk '{print $6}' | head -c 1 | grep -q "m"; then
	min="`echo "$time" | awk '{print $5}'` minutos"
	length_m="`echo "$time" | awk '{print $5}'`m "
fi
	if echo "$time" | awk '{print $2}' | head -c 1 | grep -q "s"; then
	sec="`echo "$time" | awk '{print $1}'` segundos"
	length_s="`echo "$time" | awk '{print $1}'`s "
fi
	if echo "$time" | awk '{print $4}' | head -c 1 | grep -q "s"; then
	sec="`echo "$time" | awk '{print $3}'` segundos"
	length_s="`echo "$time" | awk '{print $3}'`s "
fi
	if echo "$time" | awk '{print $6}' | head -c 1 | grep -q "s"; then
	sec="`echo "$time" | awk '{print $5}'` segundos"
	length_s="`echo "$time" | awk '{print $5}'`s "
fi
	if echo "$time" | awk '{print $8}' | head -c 1 | grep -q "s"; then
	sec="`echo "$time" | awk '{print $7}'` segundos"
	length_s="`echo "$time" | awk '{print $7}'`s "
fi
	literal_alarm=$(echo ""$day" "$hour" "$min" "$sec"")
	alarm=$(echo ""$length_d""$length_h""$length_m""$length_s"")

if new_time=$( zenity --entry --entry-text="                                                     $alarm" --text="Alarma:$literal_alarm\n\n.Deseas cancelar o activar, con este\ntiempo establecido?\nsi deseas modificalo, o cancela el proceso" | tr '[:upper:]' '[:lower:]' ); then
alarm=$(echo "$new_time" | sed 's/ //g;s/d/d /g;s/h/h /g;s/m/m /g;s/s/s /g' )
if echo "$new_time" | sed 's/ //g' | grep -x -o -q '\<[[:digit:][^dhms]*\>' ; then

	echo "Alarma:$alarm"
echo `date +%Y`-`date +%m`-`date +%d`:`date +%k`:`date +%M`:`date +%S` > /tmp/hora_actual
fecha=$(cat /tmp/hora_actual)

uno()
{
echo "Alarma:$alarm"
#pic_ring=$(echo "`ls "${SONGS_PATH}"/* | sed 's|'"${SONGS_PATH}"'/||g'`" | zenity --list --title="Selecciona un Rigntone" --width="335" --height="310" --column="Cliquea un archivo" )

#if [ -f "${SONGS_PATH}"/"$pic_ring" ]; then
#	sleep $alarm && audacious "${SONGS_PATH}"/"$pic_ring"
#	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
#exit 1
#fi
sleep $alarm && audacious ""${SONGS_PATH}"/vip ringtone.mp3"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
}

dos()
{
text_in=$(zenity --title "Texto de recordatorio" --width="335" --height="310" --text-info --editable | awk '{ printf "%s ", $0 }')
echo "$text_in" > /tmp/Texto_recordatorio-temp
mv /tmp/Texto_recordatorio-temp ~/".$fecha.Alarma durmiendo por: $alarm.txt"

sleep $alarm
if (zenity --title "Texto de recordatorio" --width="335" --height="310" --text-info --checkbox "Active la casilla para guardar el texto." --filename="$HOME/.$fecha.Alarma durmiendo por: $alarm.txt")
then
mv ~/".$fecha.Alarma durmiendo por: $alarm.txt" ~/"$fecha.Alarma durmiendo por: $alarm.txt"
DESTINO=$(zenity --file-selection --filename="$HOME/$fecha.Alarma durmiendo por: $alarm.txt" --save)
mv "$HOME/$fecha.Alarma durmiendo por: $alarm.txt" "$DESTINO"
exit 0;
fi
}

tres()
{
echo "Alarma:$alarm"
	sleep $alarm && rhythmbox-client --play
}

cuatro()
{
echo "Alarma:$alarm"
echo "echo -n "'"'"                                "'"'"\\\\r" > /tmp/if_internal_active
ports=$(pacmd list-sources | grep "active port")
if echo "$ports" | grep -q -v "active port: <analog-input-microphone>\|active port: <analog-input-microphone;"; then
v-c -mic "$microphe_port" >/tmp/port_errors
if sed -n '2p' /tmp/port_errors | grep -q -v "La configuración del micrófono, ahora es con este puertos:"; then
cat /tmp/port_errors
rm /tmp/port_errors
rm /tmp/line_of_process
rm /tmp/process_result
rm /tmp/if_internal_active
exit 1
fi
echo "pacmd set-source-port "$microphe_port" '`echo "$ports" | cut -d'>' -f1 | cut -d'<' -f2 `'  >/tmp/port_errors && echo -n "'"'"                                "'"'"\\\\r"  > /tmp/if_internal_active
fi

rec -r 16000 -c 1 -t mp3  ~/".$fecha grabacion-recordatorio Durmiendo:$alarm.mp3" 2>&1 | awk -vRS="\r" '$1 ~ /In/ {gsub(/In:/," ");gsub(/%\)/," ");gsub(/ \(/," ");print $3"\n# Grabacion recordatorio.\\n\\nCierre esta ventana para\\nfinalizar la grabación.\\n\\nTiempo:\\t"$2"\\nTamaño :\\t"$4; fflush();}' | zenity --window-icon="/usr/share/icons/hicolor/48x48/apps/audio-recorder-on.png" --progress --pulsate --no-cancel --auto-kill --auto-close --width="255" --height="190" --title=" Grabando..."
sh /tmp/if_internal_active
rm /tmp/if_internal_active
rm /tmp/progress_active
if [ -f /tmp/port_errors ] ; then
rm /tmp/port_errors
fi
	sleep $alarm && audacious ~/".$fecha grabacion-recordatorio Durmiendo:$alarm.mp3"
}

cinco()
{
echo "Alarma:$alarm"
text_in=$(zenity --title "Texto de recordatorio" --width="335" --height="310" --text-info --editable | awk '{ printf "%s ", $0 }')
echo "$text_in" > /tmp/Texto_recordatorio-temp
mv /tmp/Texto_recordatorio-temp ~/".$fecha.Alarma durmiendo por: $alarm.txt"
sleep $alarm && audacious ""${SONGS_PATH}"/vip ringtone.mp3"
if (zenity --title "Texto de recordatorio" --width="335" --height="310" --text-info --checkbox "Active la casilla para guardar el texto." --filename="$HOME/.$fecha.Alarma durmiendo por: $alarm.txt")
then
mv ~/".$fecha.Alarma durmiendo por: $alarm.txt" ~/"$fecha.Alarma durmiendo por: $alarm.txt"
DESTINO=$(zenity --file-selection --filename="$HOME/$fecha.Alarma durmiendo por: $alarm.txt" --save)
mv "$HOME/$fecha.Alarma durmiendo por: $alarm.txt" "$DESTINO"
exit 0;
fi
if [ -f ~/".$fecha.Alarma durmiendo por: $alarm.txt" ]; then
mv ~/".$fecha.Alarma durmiendo por: $alarm.txt" `xdg-user-dir DESKTOP`

fi
}

seis()
{
echo "Alarma:$alarm"
text_in=$(zenity --title "Texto de recordatorio" --width="335" --height="310" --text-info --editable | awk '{ printf "%s ", $0 }')
echo "$text_in" > /tmp/Texto_recordatorio-temp
mv /tmp/Texto_recordatorio-temp ~/".$fecha.Alarma durmiendo por: $alarm.txt"
sleep $alarm && rhythmbox-client --play
if (zenity --title "Texto de recordatorio" --width="335" --height="310" --text-info --checkbox "Active la casilla para guardar el texto." --filename="$HOME/.$fecha.Alarma durmiendo por: $alarm.txt")
then
mv ~/".$fecha.Alarma durmiendo por: $alarm.txt" ~/"$fecha.Alarma durmiendo por: $alarm.txt"
DESTINO=$(zenity --file-selection --filename="$HOME/$fecha.Alarma durmiendo por: $alarm.txt" --save)
mv "$HOME/$fecha.Alarma durmiendo por: $alarm.txt" "$DESTINO"
exit 0;
fi
if [ -f ~/".$fecha.Alarma durmiendo por: $alarm.txt" ]; then
mv ~/".$fecha.Alarma durmiendo por: $alarm.txt" `xdg-user-dir DESKTOP`

fi
}
siete()
{
echo "Alarma:$alarm"
notify-send -i "/usr/share/icons/hicolor/48x48/apps/audio-recorder-on.png" " Grabando..." 
echo "echo -n "'"'"                                "'"'"\\\\r" > /tmp/if_internal_active
ports=$(pacmd list-sources | grep "active port")
if echo "$ports" | grep -q -v "active port: <analog-input-microphone>\|active port: <analog-input-microphone;"; then
v-c -mic "$microphe_port" >/tmp/port_errors
if sed -n '2p' /tmp/port_errors | grep -q -v "La configuración del micrófono, ahora es con este puertos:"; then
cat /tmp/port_errors
rm /tmp/port_errors
rm /tmp/line_of_process
rm /tmp/process_result
rm /tmp/if_internal_active
exit 1
fi
echo "pacmd set-source-port "$microphe_port" '`echo "$ports" | cut -d'>' -f1 | cut -d'<' -f2 `'  >/tmp/port_errors && echo -n "'"'"                                "'"'"\\\\r"  > /tmp/if_internal_active
fi

rec -r 16000 -c 1 -t flac  /tmp/grabacion-recordatorio.flac 2>&1 | awk -vRS="\r" '$1 ~ /In/ {gsub(/In:/," ");gsub(/%\)/," ");gsub(/ \(/," ");print $3"\n# Grabacion recordatorio.\\n\\nCierre esta ventana para\\nfinalizar la grabación.\\n\\nTiempo:\\t"$2"\\nTamaño :\\t"$4; fflush();}' | zenity --window-icon="/usr/share/icons/hicolor/48x48/apps/audio-recorder-on.png" --progress --pulsate --no-cancel --auto-kill --auto-close --width="255" --height="190" --title=" Grabando..." 

JSON=`curl -s -X POST \
--data-binary @'/tmp/grabacion-recordatorio.flac' \
--header 'Content-Type: audio/x-flac; rate=16000;' \
'https://www.google.com/speech-api/v2/recognize?output=json&lang='$lang'&key='$key'' | cut -d\" -f8 `
mv /tmp/grabacion-recordatorio.flac ~/".$fecha grabacion-recordatorio Durmiendo:$alarm.flac"
sh /tmp/if_internal_active
rm /tmp/if_internal_active
rm /tmp/progress_active
if [ -f /tmp/port_errors ] ; then
rm /tmp/port_errors
fi
echo "$JSON" | sed '/^$/d' > /tmp/Texto_recordatorio-temp

text_in=$(zenity --title "Texto de recordatorio" --width="335" --height="310" --text-info --editable --filename="/tmp/Texto_recordatorio-temp" | awk '{ printf "%s ", $0 }')
echo "$text_in" > /tmp/Texto_recordatorio-temp
mv /tmp/Texto_recordatorio-temp ~/".$fecha.Alarma durmiendo por: $alarm.txt"
sleep $alarm
mv ~/".$fecha grabacion-recordatorio Durmiendo:$alarm.flac" ~/"$fecha grabacion-recordatorio Durmiendo:$alarm.flac"
audacious ~/"$fecha grabacion-recordatorio Durmiendo:$alarm.flac" &
if (zenity --title "Texto de recordatorio" --width="335" --height="310" --text-info --checkbox "Active la casilla para guardar el texto." --filename="$HOME/.$fecha.Alarma durmiendo por: $alarm.txt")
then
mv ~/".$fecha.Alarma durmiendo por: $alarm.txt" ~/"$fecha.Alarma durmiendo por: $alarm.txt"
DESTINO=$(zenity --file-selection --filename="$HOME/$fecha.Alarma durmiendo por: $alarm.txt" --save)
mv "$HOME/$fecha.Alarma durmiendo por: $alarm.txt" "$DESTINO"
exit 0;
fi
if [ -f ~/".$fecha.Alarma durmiendo por: $alarm.txt" ]; then
mv ~/".$fecha.Alarma durmiendo por: $alarm.txt" `xdg-user-dir DESKTOP`

fi
}

dialogo()
{
	opcion=$( zenity --list --text="Opciones de alarmas" --radiolist --width="330" --height="285" --title="Alarmas"  \
					--column='Clic' --column='Opción'  \
					'TRUE' 		"Alarma_(Un_sonido)"  \
					'FALSE' 		"Alarma_(Un_texto)"  \
					'FALSE' 		"Alarma_(Poner_música)"  \
					'FALSE' 		"Alarma_(Una_gravación)"  \
					'FALSE' 		"Alarma_(Un_sonido+texto)"  \
					'FALSE' 		"Alarma_(Poner_música+texto)"  \
					'FALSE' 		"Alarma_(Una_gravación+texto)"  )

}

comando()
{
dialogo

	if [ ${opcion} = 'Alarma_(Un_sonido)' ]; then
		uno
	elif [ ${opcion} = 'Alarma_(Un_texto)' ]; then
		dos
	elif [ ${opcion} = 'Alarma_(Poner_música)' ]; then
		tres
	elif [ ${opcion} = 'Alarma_(Una_gravación)' ]; then
		cuatro
	elif [ ${opcion} = 'Alarma_(Un_sonido+texto)' ]; then
		cinco
	elif [ ${opcion} = 'Alarma_(Un_música+texto)' ]; then
		seis
	elif [ ${opcion} = 'Alarma_(Una_gravación+texto)' ]; then
		siete
	else
		echo "Error en selección."
		exit 1
	fi
}
comando
mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi
fi
	notify-send "Comando, Alarama es:" "sleep ( 0 - 9 ) d ( 0 - 9 ) h ( 0 - 9 ) m ( 0 - 9 ) s 
Alarama desactiva"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 1;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_LOG_OFF" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+Alt+BackSpace"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_BRIGHTNESS_UP" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "XF86MonBrightnessUp"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_BRIGHTNESS_DOWN" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "XF86MonBrightnessDown"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_POWER_OFF" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "XF86PowerOff"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep "$CMD_CALCULATOR" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	numb_smimb=$(echo "$UTTERANCE" | sed 's/'"$CMD_CALCULATOR"' //g;s/'"$CMD_CALCULATOR"'//g;s/ y/y/g;s/treinta y/030/g;s/cuarenta y/040/g;s/cincuenta y/050/g;s/sesenta y/060/g;s/setenta y/070/g;s/ochenta y/080/g;s/noventa y/090/g;s/diez/010/g;s/once/011/g;s/doce/012/g;s/trece/013/g;s/catorce/014/g;s/quince/015/g;s/dieciséis/016/g;s/dieci/01/g;s/veinte/020/g;s/veinti/020/g;s/treintai/030/g;s/treinta/030/g;s/cuarentai/040/g;s/cuarenta/040/g;s/cincuentai/050/g;s/cincuenta/050/g;s/sesentai/060/g;s/sesenta/060/g;s/setentai/070/g;s/setenta/070/g;s/ochentai/080/g;s/ochenta/080/g;s/noventai/090/g;s/noventa/090/g;s/doscientos/200/g;s/trescientos/300/g;s/cuatrocientos/400/g;s/quinientos/500/g;s/seiscientos/600/g;s/setecientos/700/g;s/ochocientos/800/g;s/novecientos/900/g;s/ciento/100/g;s/cien/100/g;s/uno/01/g;s/un/01/g;s/dos/02/g;s/tres/03/g;s/cuatro/04/g;s/cinco/05/g;s/seis/06/g;s/siete/07/g;s/ocho/08/g;s/nueve/09/g;s/016/16/g;s/017/17/g;s/018/18/g;s/019/19/g;s/020/20/g;s/030/30/g;s/040/40/g;s/050/50/g;s/060/60/g;s/070/70/g;s/080/80/g;s/090/90/g;s/001/1/g;s/002/2/g;s/003/3/g;s/004/4/g;s/005/5/g;s/006/6/g;s/007/7/g;s/008/8/g;s/009/9/g;s/ 0/ /g;s/'"$Rest"'/−/g;s/'"$Division"'/÷/g;s/'"$Square"'/²/g;s/'"$Percent"'/%/g;s/'"$Multipli"'/×/g;s/'"$Root"'/√/g;s/'"$Dot"'/./g;s/'"$Comma"'/,/g;s/ //g')
lines=$(echo "xdotool type "$numb_smimb"" | sed 's/'"$Sum"'/ && xdotool key 0x002b && xdotool type /g' )
echo "#/bin/bash
$lines" > /tmp/script_calc.temp
chmod +x /tmp/script_calc.temp
	gcalctool & sleep 1 && sh /tmp/script_calc.temp
	rm /tmp/script_calc.temp
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_SCREENSHOT" )
	if [ "$recog" != "" ]
	then
	echo "Captura de pantalla de `date +%Y`-`date +%m`-`date +%d`:`date +%k`:`date +%M`:`date +%S`.png" > /tmp/date-to-pict.temp
	DATE_PIC=$(cat /tmp/date-to-pict.temp)
	import -window root `xdg-user-dir PICTURES`/"$DATE_PIC"
	eog `xdg-user-dir PICTURES`/"$DATE_PIC"
	rm /tmp/date-to-pict.temp
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################


recog=$(echo "$UTTERANCE" | grep -x "$CMD_OPEN_FILE" )
	if [ "$recog" != "" ]
	then
	notify-send "Comando:"  "$recog"
	xdotool key "Ctrl+o"
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi


###################################################################


recog=$(echo "$UTTERANCE" | grep "$CMD_OFFICE" )
	if [ "$recog" != "" ]
	then
	docs=$(echo "$UTTERANCE" | sed 's/'"$CMD_OFFICE"' //g;s/'"$CMD_OFFICE"'//')

Action_Writer=$(echo "$UTTERANCE" | grep "$Writer" )
	if [ "$Action_Writer" != "" ]
	then
libreoffice --writer
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi
Action_Calc=$(echo "$UTTERANCE" | grep "$Calc" )
	if [ "$Action_Calc" != "" ]
	then
libreoffice --calc
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi
Action_Impress=$(echo "$UTTERANCE" | grep "$Impress" )
	if [ "$Action_Impress" != "" ]
	then
libreoffice --impress
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi
Action_Draw=$(echo "$UTTERANCE" | grep "$Draw" )
	if [ "$Action_Draw" != "" ]
	then
libreoffice --draw
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi
Action_Math=$(echo "$UTTERANCE" | grep "$Math" )
	if [ "$Action_Math" != "" ]
	then
libreoffice --math
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi
	mv /tmp/speech_recognition.tmp /tmp/speech_recognition_prev.tmp
exit 0;
fi

###################################################################

if [ -f /tmp/speech_recognition.tmp ]; then
rm /tmp/speech_recognition.tmp
fi
	if [ "$?" -eq 0 ]; then
notify-send -i "/usr/share/icons/hicolor/48x48/apps/audio-recorder-off.png" "No hay un comando:" "$UTTERANCE"

exit 1
fi
