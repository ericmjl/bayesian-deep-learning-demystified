PDFIMAGES = $(wildcard images/*.pdf)
IMAGES = $(patsubst images/%.pdf, images/%.jpg, $(PDFIMAGES))

images: $(IMAGES)
	echo

images/%.jpg: images/%.pdf Makefile
	convert -density 1200 $< -quality 100 $@
