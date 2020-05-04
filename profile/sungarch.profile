export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -d -x
# https://github.com/astrada/google-drive-ocamlfuse/wiki/Automounting
mount | grep "${HOME}/Gdrive_cam " >/dev/null || /usr/bin/google-drive-ocamlfuse "${HOME}/Gdrive_cam"&
