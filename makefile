.DELETE_ON_ERROR:

clean:
	rm -f *.png*

%.png:
	wget https://github.com/identicons/$*.png
	gm convert $*.png -background transparent \
                     -compose copy -gravity center \
                     -extent 512x512 \
                     -transparent "#F0F0F0" \
                     $*_no_back.png

