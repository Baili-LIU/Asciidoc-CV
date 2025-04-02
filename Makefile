# Makefile to generate PDF from AsciiDoc

ASCIIDOC_FILE = CV_template.adoc
PDF_FILE = CV_template.pdf

all: $(PDF_FILE)

$(PDF_FILE): $(ASCIIDOC_FILE)
	asciidoctor-pdf $(ASCIIDOC_FILE) -o $(PDF_FILE)

clean:
	rm -f $(PDF_FILE)

.PHONY: all clean