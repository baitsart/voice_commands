# Comandos de Voz (comanda tu PC con órdenes habladas)  #

Puede modificar los comandos de abajo para un mejor uso, en el archivo: ~/.voice_commands/"v-c LANGS"/commands-es

La función de éste programa se inicia ejecutando el script play_stop.sh, el cual comenzará a grabar su voz, y si transcurren cinco segundos, o si lo vuelves a ejecutar, iniciará el reconocimiento de voz, para ya, realizar uno de todos los comandos disponibles.
Las órdenes pueden ser simples de un sólo contexto: << orden >>, o de doble contexto: << orden >> << texto-citado >>
También se puede repetir el último comando con función: RETRY
Las órdenes disponibles son 95

Después de instalado lo podrás lanzar desde Aplicaciones, Acceso universal, Comandos de Voz
Y lo puedes arrastrar y soltar en el panel de gnome, y para llamarlo de un atajo de teclado, por ej. F6, éste es el comando: 
# Cambiando $USER por to nombre de usuario: /home/$USER/.voice_commands/play_stop.sh
Primero instale el archivo de línea de comandos, escriba lo siguiente:
sudo cp ~/.voice_commands/v-c /usr/bin && sudo cp ~/.voice_commands/v-c /usr/bin/voice-commands
Y lo puede llamar así:
v-c
o,
voice-commands

------------------------------------------------------------

#	##	v-c, command line options	##	#

v-c -r		Correr
v-c -l -lang	Para seleccionar otro, de 67 idiomas de reconocimiento .
v-c -t -try	Para tratar cualquier comando, de manera predeterminada lang, o un [-lang].
v-c -m -mod	Para modificar el archivo de comandos y el archivo README.
v-c -h		Documento Ver instrucciones README.
v-c --help	Mostrar este mensaje

------------------------------------------------------------
Dependencias:
Acceso a internet.
Micrófono activo, y con volumen correcto, Micrófono, o Micrófono interno. Está en: Configuración del sistema, Sonido, Entrada.

Programas de dependencias:

sudo apt-get install xdotool gawk curl wget cheese audacious sox alsa-utils

Programas que usa y ya están en la distribución:
rhythmbox nautilus gcalctool gedit eog libreoffice-writer libreoffice-calc libreoffice-impress libreoffice-draw libreoffice-math

##### ACCIONES DISPONIBLES #####

   Nombre del comando
   *se activa con*

################################
   SELECT_FILE
   (seleccionar) << texto-citado >>
################################
   MUSIC_START
   (poner música | reproductor de música | play música | pausar música | pausa música | música | pausa)
################################
   MUSIC_START_SONG << texto-citado >>
   (poner música de | música de | reproducir a | reproducir música de | tocar música de)
################################
   MUSIC_PLAY
   (música play | música pausa | iniciar música | parar música | detener música)
################################
   MUSIC_NEXT
   (canción siguiente | siguiente canción | canción próxima | próxima canción | pista siguiente | siguiente pista | pista próxima | próxima pista)
################################
   MUSIC_PREV
   (canción previa | previa canción | canción anterior | anterior canción | pista previa | previa pista | pista anterior | anterior pista)
################################
   MUSIC_SHUFFLE
   (música aleatoria | mezclar | no mezclar)
################################
   MUSIC_REPEAT
   (repetir | no repetir)
################################
   VIDEO_REW
   (atrasar | rebobinar | pasar para atrás)
################################
   VIDEO_FF
   (adelantar | pasar para adelante)
################################
   VOLUME_DOWN
   (bajar el volumen | bajar volumen | menos volumen | volumen menos)
################################
   VOLUME_UP
   (subir el volumen | subir volumen | más volumen | volumen más)
################################
   VOLUME_MUTE
   (sin audio | sin volumen | apagar volumen | mudo)
################################
   SEARCH
   (buscar) << texto-citado >>
################################
   NO_STAND_OUT
   (quitar el resaltado | quitar resaltado)
################################
   TRANSLATE [desde] [hacia] << texto-citado >>
   (traducir el | traduce el | traducción el | traducir del | traduce del | traducción del | traducir desde | traduce desde | traducción desde | traducir de el | traduce de el | traducción de el | traducir de | traduce de | traducción de | traducir | traduce | traducción)
################################
   WRITE << texto-citado >>
   (escribir | escribe | escriba)
################################
   WRITE_CAPITAL << texto-citado >>
   (escribir con mayúscula | escribir en mayúscula)
################################
   WRITE_CAPITAL_ALL << texto-citado >>
   (escribir todo en mayúscula | escribir todo con mayúscula)
################################
   SAY_THIS << texto-citado >>
   (decir esto | decir)
################################
   GOOGLE_SEARCH << texto-citado >>
   (buscar en google | buscar en internet | significado de | que es | buscar en el diccionario)
################################
   YOUTUBE_SEARCH << texto-citado >>
   (buscar en youtube | que hay de | buscar videos de | videos de | buscar vídeos de | vídeos de)
################################
   WIKI_SEARCH << texto-citado >>
   (buscar en wiki | buscar en wikipedia | wikipedia)
################################
   WEATHER << texto-citado >>
   (clima | clima en | clima de)
################################
   SEARCH_MAPS << texto-citado >>
   (mapa | buscar mapa de | mapa de | donde es)
################################
   SAY_HI << texto-citado >>
   (saluda a | saluda al)
################################
   HELLO
   (hola compu)
################################
   WHOAMI
   (quien soy yo)
################################
   OPEN_FOLDER << texto-citado >>
   (abrir carpeta | abrir carpeta de)
################################
   SAY_TIME
   (dime la hora | que hora es | que hora son)
################################
   SAY_DATE
   (que fecha es | que día es | que fecha es hoy | que día es hoy | dime la fecha | en que fecha estamos)
################################
   DICTATION << texto-citado-continuo >>
   (modo dictado | salir modo dictado | terminar modo dictado)
################################
   UNDO
   (deshacer)
################################
   REDO
   (rehacer)
################################
   DEL_LINE
   (borrar linea)
################################
   FAV
   (añadir a favoritos)
################################
   CLOSE_TERM
   (cerrar la terminal | cerrar terminal)
################################
   MAIL
   (abrir mail | abrir email | abrir correo | mail | email)
################################
   COPY
   (copiar)
################################
   PASTE
   (pegar)
################################
   CUT
   (cortar)
################################
   SELECT_ALL
   (seleccionar todo)
################################
   SAVE
   (guardar | guardar archivo)
################################
   SAVE_AS
   (guardar como | guardar página como)
################################
   FOLDER
   (crear carpeta | nueva carpeta)
################################
   MINIMISE
   (minimizar)
################################
   MAXIMISE
   (maximizar)
################################
   FULLSCREEN
   (pantalla completa)
################################
   TAB
   (tabula | tabular | tabulación)
################################
   ESC
   (escape)
################################
   ACTIONS_MENU
   (menú | abrir menú | cerrar menú)
################################
   MENU
   (menú principal | abrir menú principal)
################################
   CLOSE
   (cerrar programa | salir)
################################
   CLOSE_WIN
   (cerrar ventana)
################################
   ZOOM_OUT
   (alejar | achicar | disminuir | zoom menos)
################################
   ZOOM_IN
   (acercar | agrandar | aumentar | zoom mas)
################################
   ZOOM_RESET
   (tamaño normal | zoom cero)
################################
   TOUCH_ON_OFF
   (apagar ratón táctil | encender ratón táctil | touchpad)
################################
   BACK
   (atrás | retroceder | volver)
################################
   ADVANCE
   (avanzar | adelante)
################################
   RIGHT
   (derecha)
################################
   LEFT
   (izquierda)
################################
   DOWN
   (abajo)
################################
   UP
   (arriba)
################################
   PAGE_DOWN
   (bajar)
################################
   PAGE_UP
   (subir)
################################
   HOME_PAGE
   (principio de la página | ir al principio de la página | ir al principio)
################################
   END_PAGE
   (final de la página | ir al final de la página | ir al final)
################################
   HOME
   (principio)
################################
   END
   (final)
################################
   SCROLL_DOWN
   (bajar página | correr para abajo | correr hacia abajo)
################################
   SCROLL_UP
   (subir página | correr para arriba | correr hacia arriba)
################################
   DELETE
   (borrar)
################################
   ENTER
   (abrir | ejecutar | enter)
################################
   NEW_WINDOW
   (nueva ventana | ventana nueva)
################################
   CHANGE_TAB << número-citado >>
   (mover a pestaña | ir a pestaña | cambiar a pestaña | mover a ventana | ir a ventana | cambiar a ventana | ventana )
################################
   CLOSE_TAB
   (cerrar pestaña)
################################
   BROWSER
   (navegador | abrir navegador | internet)
################################
   FILE_MANAGER
   (nautilus | explorador de archivos | abrir nautilus | abrir explorador de archivos)
################################
   TERMINAL
   (abre la consola | abrir la consola | abre consola | abrir consola | abrir terminal | abre terminal | abrir la terminal | abre la terminal)
################################
   EXECUTE
   (lanzar comando | ejecutar comando)
################################
   BATTERY
   (batería | estado de la batería | carga de la batería)
################################
   TEXT_EDITOR
   (editor de texto | abrir editor de texto | lanzar editor de texto | texto nuevo)
################################
   SCREENSHOT
   (captura de pantalla | captura)
################################
   ALARM << número-citado >>
   (alarma | alarma a)
################################
   LOG_OFF
   (cerrar sesión | salir de la sesión)
################################
   BRIGHTNESS_UP
   (subir el brillo | aumentar el brillo | subir brillo | aumentar brillo)
################################
   BRIGHTNESS_DOWN
   (bajar el brillo | disminuir el brillo | bajar brillo | disminuir brillo)
################################
   POWER_OFF
   (apagar el sistema | apagar la máquina | apagar la computadora | apagar computadora | apagar)
################################
   CALCULATER
   (calculadora)
################################
   TAKE_PICTURE
   (fotografía | tomar una foto | tomar una fotografía | foto)
################################
   TAKE_VIDEO
   (grabar | grabar un vídeo | grabar un video)
################################
   OPEN_FILE
   (abrir archivo | abrir un nuevo archivo)
################################
   OFFICE << texto-citado [ writer, calc, impress, draw, math ] >>
   (abrir un nuevo documento de | abrir un nuevo documento | crear un nuevo documento de | crear un nuevo documento | crear un nuevo | crear una nueva | abrir un nuevo | abrir una nueva)
Writer (texto)
Calc (hoja de cálculo)
Impress (presentación | página | web)
Draw (dibujo | gráfico)
Math (fórmula | matemática)
################################
   RETRY
   (reintentar comando | repetir comando | reiterar comando | reintentar | repetir | reiterar)
################################

Puedes encontrar muchísimas más funciones disponibles con este comando:
Multimendia y medios:
# grep "XK_" /usr/include/X11/XF86keysym.h|sed 's/XK_//g' > ~/"Mas comandos" && gedit ~/"Mas comandos"
Todos los demás:
# grep "XK_" /usr/include/X11/keysymdef.h|sed 's/ XK_/ /g' > ~/"Muchos mas comandos" && gedit ~/"Muchos mas comandos" 

Con estos podrás crear tus propias acciones. 
Usa 'xdotool key XF86...', o 'xdotool key "Combinación+de+teclas"' para las funciones de teclas, 
y para escribir 'xdotool type "lo que quieras escribir"'

Si algunos no los tienes configurados, puedes hacerlo en Configuración del sistema, Teclado, Atajos de teclado. Si las funciones figuran como activas y al probarlas no andan, indícale nuevamente el atajo de teclado, con clic sobre la combinación de teclas establecida, y eso ofrecerá Acelerador nuevo, y elige el mismo que figuraba de origen. 
Hay más opciones en Teclado, Configuración de la distribución, Opciones. Como cerrar sesión, con Matar las X, con (Ctrl+Alt+BackSpace).
El "+" sólo cuando escribes el comando no cuando lo presionas, en éste caso no lo presiones.

# Descargarlo en otros idiomas en Gnome-Look.org
http://gnome-look.org/content/show.php?content=165529

############# Escrito por Rodrigo Esteves ##############
### baitsart@gmail.com www.youtube.com/user/baitsart ###
# Licencia GNU. Eres libre de modificar y redistribuir #


