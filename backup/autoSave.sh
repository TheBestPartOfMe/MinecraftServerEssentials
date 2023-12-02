screen -r 8630 -X /save-off              #Insert ur session name for the 8630
echo   Backup started
screen -r 8630 -X /save-off
echo Auto-Save disabled
TIME=`date +%b-%d-%y`                      # This Command will read the date.
FILENAME=backup-server-$TIME.tar.gz      # The filename including the date.
SRCDIR=UwU                               # Source backup folder.
DESDIR=backup                            # Destination of backup file.
tar -cpzf $DESDIR/$FILENAME $SRCDIR
echo Backup saved
screen -r 8630 -X /save-on
echo Auto-Save enabled
echo Done
