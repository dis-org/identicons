.REMOVE_ON_ERROR:
.SECONDARY:

all: disorganizzazione \
		batto1300 \
		drfebusinc \
		filmar \
		frabulous \
		gio93k \
		grushnack \
		harisont \
		kappanneo \
		oneclaudio \
		shizen39
	@echo "all done!"

clean:
	rm -f *.png*

% : %.png | ;
	@:

%.png :
	@echo "retrieving $*'s identicon"
	wget -q https://github.com/identicons/$*.png
	@echo "converting $*'s identicon"
	./convert.sh $* transparent no_back
	./convert.sh $* "#C0C0C0" light
	./convert.sh $* "#2E3436" dark
	./convert.sh $* "#FFFFFF" white
	./convert.sh $* "#000000" black
	@echo "$* done."
