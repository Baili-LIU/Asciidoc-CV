# Variables
SRC_DIR = src
OUTPUT_DIR = output
INPUT_FILE = $(SRC_DIR)/CV_template.adoc
HTML_OUTPUT = $(OUTPUT_DIR)/CV.html
PDF_OUTPUT = $(OUTPUT_DIR)/CV.pdf

# Ensure output directory exists
$(OUTPUT_DIR):
	mkdir -p $(OUTPUT_DIR)

# Generate HTML
html: $(HTML_OUTPUT)

$(HTML_OUTPUT): $(INPUT_FILE) | $(OUTPUT_DIR)
	asciidoctor -o $@ $<

# Generate PDF
pdf: $(PDF_OUTPUT)

$(PDF_OUTPUT): $(HTML_OUTPUT) | $(OUTPUT_DIR)
	wkhtmltopdf --enable-local-file-access $< $@

# Default target
all: clean html pdf

# Clean output
clean:
	rm -rf $(OUTPUT_DIR)