.REMOVE_ON_ERROR:
.SECONDARY:

clean:
	rm -f *.png*

% : %.png | done
	@:

%.png :
	wget https://github.com/identicons/$*.png
	./convert.sh $* transparent no_back
	./convert.sh $* "#F0F0F0" light
	./convert.sh $* "#2E3436" dark
	./convert.sh $* "#FFFFFF" white
	./convert.sh $* "#000000" black

done:
	@echo "all done!"