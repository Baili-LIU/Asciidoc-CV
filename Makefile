# Variables
INPUT_FILE = CV_template.adoc
OUTPUT_DIR = output
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
	wkhtmltopdf $< $@

# Default target
all: html pdf

# Clean output
clean:
	rm -rf $(OUTPUT_DIR)