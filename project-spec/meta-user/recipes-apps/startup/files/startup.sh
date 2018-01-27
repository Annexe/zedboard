#! /usr/bin/env sh

## declare an array variable
declare -a startUpFiles=( "/run/media/mmcblk1p1/startup.sh"
			  "/run/media/mmcblk0p1/startup.sh"
			  "/run/media/mmcblk1/startup.sh"
			  "/run/media/mmcblk0/startup.sh"
			 )

start ()
{
#	echo " Starting startup.sh from SD (run/media/mmcblk...)"
#	if [ -f /run/media/mmcblk0p1/startup.sh ];
#	then
#		/run/media/mmcblk0p1/startup.sh
#	fi

	## now loop through the above array
	for file in "${startUpFiles[@]}"
	do
	        if [ -f $file ];
	        then
        	        echo "Starting startup.sh from SD ($file)"
        	        sh $file
			break
        	fi
	done
}

stop ()
{
	echo " No stop script not implemented yet"
}

restart()
{
	stop
	start
}

case "$1" in
	start)
		start; ;;
	stop)
		stop; ;;
	restart)
		restart; ;;
	*)
		echo "Usage: $0 {start|stop|restart}"
		exit 1
esac

exit $?
