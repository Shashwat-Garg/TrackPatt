gdbus monitor -e -d com.canonical.Unity -o /com/canonical/Unity/Session | \
(while read x; do
	locked=`echo $x | grep "Locked" | wc -c`
	unlocked=`echo $x | grep "Unlocked" | wc -c`
	if [ "$locked" -gt "0" ]; then
		echo "Screen locked!"
		sudo bash -c 'echo 1 > /dev/lockScreen'
	elif [ "$unlocked" -gt "0" ]; then
		echo "Screen unlocked!"
		sudo bash -c 'echo 0 > /dev/lockScreen'
	fi
done;)
