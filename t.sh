#!/bin/bash
 tp=35160
 tog=1
while true;
do
 	price=$(curl -s http://rate.sx/1BTC | cut -d. -f1 )
	((tog=1)) && (( $price < $tp )) && tog=0 && paplay audio.wav
	((tog=0 )) && (($price >$tp )) && tog=1 && paplay audio.wav
	sleep 30
done
