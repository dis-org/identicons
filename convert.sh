#!/bin/bash
if [[ "$2" == "transparent" ]]; then
	gm convert $1.png \
		-background transparent \
		-compose copy -gravity center \
		-extent 512x512 \
		-transparent "#F0F0F0" \
		$1_$3.png
else
	gm convert $1.png \
		-background "$2" \
		-compose copy -gravity center \
		-extent 512x512 \
		-fill "$2" \
		-opaque "#F0F0F0" \
		$1_$3.png
fi