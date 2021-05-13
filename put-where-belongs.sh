# The current directory should be this script directory
# Don't forget to provide $HOME variable to sudo
# And $USRNAME to give the right ownership to directories
if [ ! -d "$HOME/Tools" ]; then
	mkdir $HOME/Tools
	chown $USRNAME:$USRNAME $HOME/Tools
fi

if [ ! -d "$HOME/.config" ]; then
	mkdir $HOME/.config
	chown $USRNAME:$USRNAME $HOME/.config
fi

cp $PWD/keyboard/inet /usr/share/X11/xkb/symbols/
cp $PWD/keyboard/us /usr/share/X11/xkb/symbols/
cp $PWD/keyboard/00-keyboard.conf /usr/share/X11/xorg.conf.d/
cp --preserve=all $PWD/modem/reset_modem.sh $HOME/Tools/
cp --preserve=all $PWD/screen/redshift.conf $HOME/.config/
cp --preserve=all $PWD/screen/.Xdefaults $HOME/
cp --preserve=all $PWD/screen/.xinitrc $HOME/
cp --preserve=all $PWD/shell/.bashrc $HOME/
cp --preserve=all $PWD/shell/.bash_profile $HOME/
cp --preserve=all $PWD/reading/bookread.sh $HOME/Tools/
cp --preserve=all $PWD/backup/backup.sh $HOME/Tools/
