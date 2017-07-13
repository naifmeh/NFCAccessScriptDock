#!/usr/bin/env bash

command="/home/pi/libnfc/NFCAcessCpgm/nfc_emul"
log="prog.log"
match="error"
matchnosp="$(echo -e "${match}" | tr -d '[:space:]')"
$command > "$log" 2>&1 &
pid=$!

while sleep 2
do
    if fgrep --quiet "$match" "$log"
    then
	echo "KILLING NFC EMUL"
	kill $(pidof nfc_emul)
	$command > "$log" 2>&1  &
	sleep 5
	truncate -s 0 $log
	echo "RESTARTING NFC EMUL..."
	$command > "$log" 2>&1 &
	#sudo reboot 
    fi
done

