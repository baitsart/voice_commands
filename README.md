# Comandos de Voz (comanda tu PC con órdenes habladas)  #

Puede modificar los comandos de abajo para un mejor uso, en el archivo: ~/.voice_commands/"v-c LANGS"/commands-es

La función de éste programa se inicia ejecutando el script play_stop.sh, el cual comenzará a grabar su voz, y si transcurren cinco segundos, o si lo vuelves a ejecutar, iniciará el reconocimiento de voz, para ya, realizar uno de todos los comandos disponibles.
Las órdenes pueden ser simples de un sólo contexto: << orden >>, o de doble contexto: << orden >> << texto-citado >>
También se puede repetir el último comando con función: RETRY
Las órdenes disponibles son 95

Después de instalado lo podrás lanzar desde Aplicaciones, Acceso universal, Comandos de Voz
Y lo puedes arrastrar y soltar en el panel de gnome, y para llamarlo de un atajo de teclado, por ej. F6, éste es el comando: 
 ~/.voice_commands/play_stop.sh
Y lo puede llamar así:
v-c
o,
voice-commands

------------------------------------------------------------

#	##	v-c , command line options	##	#

v-c -r		Correr

v-c -l -lang	Para seleccionar otro, de 67 idiomas de reconocimiento .

v-c -t -try	Para probar cualquier comando, de manera predeterminada lang, o un [-lang].

v-c -mic [NUM]	Configure el puerto, por defecto [1,2,3...]. Y, si es [input-"1,2,3..."].

v-c -m -mod	Para modificar el archivo de comandos y el archivo LÉEME.

v-c -u -update	Para actualizar el archivo LÉEME, luego de modificar el archivo de comandos.

v-c -h		Ver instrucciones del documento LÉEME.

v-c --help	Mostrar este mensaje

------------------------------------------------------------

Dependencias:
Acceso a internet.
Micrófono activo, y con volumen correcto, Micrófono, o Micrófono interno. Está en: Configuración del sistema, Sonido, Entrada.
Puedes modificar el puerto de micrófono, del comando que activa Micrófono, y lo vuelve a Micrófono interno, por defecto el puerto es el 1, si experimenta que no se realiza el reconocimiento puede modificarlo con el comando:

 « v-c -mic '1, 2,...' ». 

Y, si es Micrófono / Micrófono '1, 2,...', entonces sería asi:

 « v-c -mic '1, 2,...' input-'1, 2,...' »
 « v-c -mic '1, 2,...' input-' ' » [ vacío para 'reset' para ";input-" ]


Si por errores de la traducción automática, tiene algúnos comandos mal escritos, o repetido, debe modificarlos, también, puede hacerlo con el comando:
v-c -m, o, v-c -mod
Y si su idioma usa apóstrofes, esto (') debe reemplazarlos por espacio esto ( ), porque podría generar conflictos.
En en los archivos:
/play_stop.sh y 
/speech_commands.sh


Instalar dependencias:

xdotool gawk curl wget cheese audacious sox flac pulseaudio alsa-utils

Programas que usa y ya están en la distribución:
rhythmbox nautilus gcalctool gedit eog libreoffice-writer libreoffice-calc libreoffice-impress libreoffice-draw libreoffice-math

##### ACCIONES DISPONIBLES #####

   Nombre del comando
   *se activa con*

################################
   SELECT_FILE << texto-citado >>
   (selecciona | seleccionar)
################################
   MUSIC_START
   (pone música | pone una música | play una música | poner una canción | reproducir una canción | poner música | reproductor de música | play música | pausar la música | pausa música | música | pausa)
################################
   MUSIC_START_SONG << texto-citado >>
   (poner una música de | play una música de | poner una canción de | reproducir una canción de | poner música de | música de | reproducir a | reproducir música de | tocar música de)
################################
   MUSIC_PLAY
   (inicia la música | iniciar la música | interrumpir | detiene la música | música play | música pausa | iniciar música | parar música | detener música)
################################
   MUSIC_NEXT
   (música siguiente | canción siguiente | siguiente canción | canción próxima | próxima canción | pista siguiente | siguiente pista | pista próxima | próxima pista)
################################
   MUSIC_PREV
   (música anterior | canción previa | previa canción | canción anterior | anterior canción | pista previa | previa pista | pista anterior | anterior pista)
################################
   MUSIC_SHUFFLE
   (azar | desactiva al azar | música aleatoria | mezclar | no mezclar)
################################
   MUSIC_REPEAT
   (repetición | no repita | repita | repetir | no repetir)
################################
   MEDIA_REW
   (atrás | rebobinar | volver | atrasar | rebobinar | pasar para atrás)
################################
   MEDIA_FF
   (avanza | siga adelante | adelantar | pasar para adelante)
################################
   VOLUME_DOWN
   (reduce el volumen | menos volumen | reducir el volumen | reduzca el volumen | bajar el volumen | bajar volumen | menos volumen | volumen menos)
################################
   VOLUME_UP
   (aumenta el volumen | sube el volumen | subir el volumen | subir volumen | más volumen | volumen más)
################################
   VOLUME_MUTE
   (silencia el sonido | poner mudo | quitar mute | quitar el mute | audio activa | sin audio | sin volumen | apagar volumen | mudo)
################################
   SEARCH
   (buscar)
################################
   NO_STAND_OUT
   (quitar el resaltado | no resaltar | quita el resaltado | quitar resaltado)
################################
   TRANSLATE [from] [to] << texto-citado >>
   (traducción de | traducir a | traducir desde | la traducción del | traducir el | traduce el | traducción de el | traducir del | traduce de el | traducción de el | traduce del | traducción del | traducir desde | traduce desde | traducción desde | traducir de el | traduce de el | traducción de el | traducir de | traduce de | traducción de | traducir | traduce | traducción)
################################
   WRITE
   (escríbeme | escribir | escribe | escriba)
################################
   WRITE_CAPITAL
   (capitaliza|mayúsculas | escribir con mayúscula | escribir en mayúscula)
################################
   WRITE_CAPITAL_ALL << texto-citado >>
   (escribir en mayúsculas | escribir todo en mayúscula | escribir todo con mayúscula
SAY_THIS << texto-citado >>
   (di | decir esto | decir)
################################
   GOOGLE_SEARCH << texto-citado >>
   (buscar en google | buscar en internet | google | busca en google | busca en internet | significado de | que es | buscar en el diccionario | busca en el diccionario)
################################
   YOUTUBE_SEARCH << texto-citado >>
   (búsqueda de vídeos | vídeo | buscar el video | buscar el vídeo | buscar en youtube | que hay de | buscar videos de | videos de | buscar vídeos de | vídeos de)
################################
   WIKI_SEARCH << texto-citado >>
   (buscar en wiki | buscar en la wikipedia | que hay en wiki | que hay en wikipedia | wikipedia)
################################
   WEATHER << texto-citado >>
   (clima | clima en | clima de)
################################
   SEARCH_MAPS << texto-citado >>
   (dónde está | mapa | muéstrame el mapa de | buscar mapa de | mapa de | donde es)
################################
   SAY_HI << texto-citado >>
   (saluda | saluda a | saluda al | saluda a el)
################################
   HELLO
   (hola | hola compu)
################################
   WHOAMI
   (quien soy yo)
################################
   OPEN_FOLDER << texto-citado >>
   (abrir directorio | abrir carpeta | abrir carpeta de | abrir directorio de)
################################
   SAY_TIME
   (dime la hora | que hora es | que hora son)
################################
   SAY_DATE
   (datos | cual es la fecha de hoy | que fecha es | que día es | que fecha es hoy | que día es hoy | dime la fecha | en que fecha estamos)
################################
   DICTATION << texto-citado-continuo >>
   (modo dictado | salir modo dictado | terminar modo dictado)
################################
   UNDO
   (cancelar | deshacer)
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
   (abrir el e -mail | abri e -mail | leer el correo electrónico | leer el post | leer el e -mail | leer el correo electrónico | abrir mail | abrir email | abrir correo | mail | email)
################################
   COPY
   (copiar)
################################
   PASTE
   (pega | pegar)
################################
   CUT
   (corta | cortar)
################################
   SELECT_ALL
   (seleccionar todo)
################################
   SAVE
   (salva | guardar el archivo | guardar | guardar archivo)
################################
   SAVE_AS
   (guardar como | guardar la página como | guardar archivo como | guardar el archivo como | guardar página como)
################################
   FOLDER
   (crea la carpeta | crear carpeta | nueva carpeta)
################################
   MINIMISE
   (minimiza | minimizar)
################################
   MAXIMISE
   (maximiza | maximizar)
################################
   FULLSCREEN
   (pantalla completa)
################################
   TAB
   (lengüeta | tabula | tabular | tabulación)
################################
   ESC
   (esc | escape)
################################
   MENU
   (abre el menú principal | menú principal | abrir menú principal)
################################
   ACTIONS_MENU
   (menú | abrir menú | cerrar menú)
################################
   CLOSE
   (cerrar el programa | salir | cerrar programa | salir del programa)
################################
   CLOSE_WIN
   (cerrar ventana)
################################
   ZOOM_OUT
   (disminuir el zoom | alejar | achicar | disminuir | zoom menos)
################################
   ZOOM_IN
   (imagen más grande | zoom | acercar | agrandar | aumentar | zoom mas)
################################
   ZOOM_RESET
   (tamaño original | quitar el zoom | quitar el zoom | tamaño normal | zoom cero)
################################
   TOUCH_ON_OFF
   (deshabilitar el touchpad | activa el touchpad | apagar ratón táctil | encender ratón táctil | touchpad)
################################
   BACK
   (atrás | retroceder | volver)
################################
   ADVANCE
   (avanzar | adelante)
################################
   RIGHT
   (derecho | derecha)
################################
   LEFT
   (izquierda)
################################
   DOWN
   (abajo)
################################
   UP
   (sube | arriba)
################################
   PAGE_DOWN
   (bajar)
################################
   PAGE_UP
   (subir)
################################
   HOME_PAGE
   (parte superior de la página | volver al principio | principio de la página | ir al principio de la página | ir al principio)
################################
   END_PAGE
   (ir al final de la página | ir a la parte inferior de la página | final de la página | ir al final de la página | ir al final)
################################
   HOME
   (comienzo | principio)
################################
   END
   (fondo | final)
################################
   SCROLL_DOWN
   (desplácese hacia abajo | desplaza hacia abajo | bajar página | correr para abajo | correr hacia abajo)
################################
   SCROLL_UP
   (ejecutar en la página | desplazarse hacia arriba | subir página | correr para arriba | correr hacia arriba)
################################
   DELETE
   (borrar | elimina | borrar)
################################
   ENTER
   (abrir | ejecutar | enter)
################################
   NEW_WINDOW
   (nueva ventana | ventana nueva)
################################
   CHANGE_TAB << números-citados >>
   (pestaña | cambio a la pestaña | cambia a pestaña | cambia a la pestaña | mover a pestaña | ir a pestaña | cambiar a pestaña | ventana | cambio a la ventana | cambia a la ventana | cambia a ventana | mover a ventana | ir a ventana | cambiar a ventana)
################################
   CLOSE_TAB
   (cerrar pestaña)
################################
   BROWSER
   (abra el navegador | navegador | abrir navegador | internet)
################################
   FILE_MANAGER
   (nautilus | abre nautilus | abrir el explorador de archivos | gestor de archivos | abra el administrador de archivos | nautilo | explorador de archivos | abrir nautilus | abrir explorador de archivos)
################################
   TERMINAL
   (abrir la consola | abre la consola | abrir nueva consola | abre consola | abrir consola | abrir una terminal | abrir terminal | abre terminal | abrir nueva terminal | abrir la terminal | abre la terminal)
################################
   EXECUTE
   (ejecuta comando | ejecuta comando | lanzar comando | ejecutar comando)
################################
   BATTERY
   (batería | estado de la batería | carga de la batería)
################################
   TEXT_EDITOR
   (abra el editor de texto | lanza el editor de texto | editor de texto | abrir editor de texto | lanzar editor de texto | texto nuevo)
################################
   SCREENSHOT
   (pantalla | captura de pantalla | captura)
################################
   ALARM << números-citados [days] [hours] [minutes] [seconds] to sleep >>
   (fija la alarma | fija la alarma a | alarma | alarma a)
################################
   LOG_OFF
   (desconectar | termina la sesión | cerrar sesión | salir de la sesión)
################################
   BRIGHTNESS_UP
   (aumenta el brillo | aumentar el brillo | sube el brillo | súbele el brillo | auméntale el brillo | subir brillo | aumentar brillo)
################################
   BRIGHTNESS_DOWN
   (reduzca el brillo | reduce el brillo | reducir el brillo | bajar el brillo | disminuir el brillo | bajar brillo | disminuir brillo)
################################
   POWER_OFF
   (apagar el sistema | apagar el pc | apagar el ordenador | apagar el sistema | apagar la máquina | apagar la computadora | apagar computadora | apagar)
################################
   CALCULATOR << operación-citada >>
   (calcula | calcular | hacer la cuenta | hacer la operación | hacer el calculo | calculadora)
################################
   TAKE_PICTURE
   (tomar una fotografía | cheese | comienza queso | fotografía | tomar una foto | tomar una fotografía | foto)
################################
   TAKE_VIDEO
   (registrar un vídeo | grabación de un vídeo | grabar | grabar un vídeo | grabar un video)
################################
   OPEN_FILE
   (abrir el archivo | abrir archivo | abrir un nuevo archivo | abre el archivo | abre archivo | abre un nuevo archivo)
################################
   OFFICE << texto-citado [ writer, calc, impress, draw, math ] >>
   (crea un nuevo documento | abra un nuevo documento | crea un nuevo documento | abra un nuevo documento | nuevo documento | abrir un nuevo documento de | abrir un nuevo documento | crear un nuevo documento de | crear un nuevo documento | crear un nuevo | crear una nueva | abrir un nuevo | abrir una nueva)
Writer (texto)
Calc (hoja de cálculo)
Impress (presentación | página | web)
Draw (dibujo | gráfico)
Math (fórmula | matemática)
################################
   RETRY
   (reintentar la orden | reintentar comando | repetir la orden | repetir comando | reiterar la orden | reiterar comando | reintentar | repetir | reiterar)
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


