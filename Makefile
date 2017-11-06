PDFIMAGES = $(wildcard images/*.pdf)
IMAGES = $(patsubst images/%.pdf, images/%.png, $(PDFIMAGES))

images: $(IMAGES)
	echo

images/%.png: images/%.pdf Makefile
	convert -density 1200 $< -quality 100 $@
