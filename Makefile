# Variables
SRC_DIR = src
OUTPUT_DIR = output
EN_INPUT_FILE = $(SRC_DIR)/CV_en.adoc
FR_INPUT_FILE = $(SRC_DIR)/CV_fr.adoc
EN_HTML_OUTPUT = $(OUTPUT_DIR)/CV_en.html
FR_HTML_OUTPUT = $(OUTPUT_DIR)/CV_fr.html
EN_PDF_OUTPUT = $(OUTPUT_DIR)/CV_en.pdf
FR_PDF_OUTPUT = $(OUTPUT_DIR)/CV_fr.pdf

# Ensure output directory exists
$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

# Generate English HTML
html-en: $(EN_HTML_OUTPUT)

$(EN_HTML_OUTPUT): $(EN_INPUT_FILE) | $(OUTPUT_DIR)
	asciidoctor -o $@ $<

# Generate French HTML
html-fr: $(FR_HTML_OUTPUT)

$(FR_HTML_OUTPUT): $(FR_INPUT_FILE) | $(OUTPUT_DIR)
	asciidoctor -o $@ $<

# Generate English PDF
pdf-en: $(EN_PDF_OUTPUT)

$(EN_PDF_OUTPUT): $(EN_HTML_OUTPUT) | $(OUTPUT_DIR)
	wkhtmltopdf --enable-local-file-access $< $@

# Generate French PDF
pdf-fr: $(FR_PDF_OUTPUT)

$(FR_PDF_OUTPUT): $(FR_HTML_OUTPUT) | $(OUTPUT_DIR)
	wkhtmltopdf --enable-local-file-access $< $@

# Generate all English files
en: html-en pdf-en

# Generate all French files
fr: html-fr pdf-fr

# Default target: Generate both English and French versions
all: clean en fr

# Clean output
clean:
	rm -rf $(OUTPUT_DIR)