PDFIMAGES = $(wildcard images/*.pdf)
IMAGES = $(patsubst images/%.pdf, images/%.jpg, $(PDFIMAGES))

images: $(IMAGES)
	echo

images/%.jpg: images/%.pdf
	convert -density 600 $< -quality 100 $@
