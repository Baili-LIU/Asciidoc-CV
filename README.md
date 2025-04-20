# Asciidoc-CV

This project contains an AsciiDoc template for creating a CV and a Makefile to generate HTML and PDF files from the AsciiDoc file.

## Prerequisites

- Ruby and RubyGems
- Asciidoctor
- wkhtmltopdf

## Installation

1. **Install Ruby and RubyGems** (if not already installed):
   ```sh
   sudo apt-get update
   sudo apt-get install ruby-full
   ```

2. **Install Asciidoctor using RubyGems**:
   ```sh
   sudo gem install asciidoctor
   ```

3. **Install wkhtmltopdf**:
   ```sh
   sudo apt-get install wkhtmltopdf
   ```

## Usage

1. **Clone the repository**:
   ```sh
   git clone https://github.com/your-username/Asciidoc-CV.git
   ```

2. **Change directory**:
   ```sh
   cd Asciidoc-CV
   ```

3. **Generate the HTML file**:
   ```sh
   make html
   ```

4. **Generate the PDF file**:
   ```sh
   make pdf
   ```

5. **Generate both HTML and PDF files**:
   ```sh
   make
   ```

6. **Clean the output directory**:
   ```sh
   make clean
   ```
## Customize your CV

1. **Modify the content in `src/CV_template.adoc`**  
   - Replace the placeholder content in `CV_template.adoc` with your own profile, including your personal information, skills, and experience.

2. **Customize the layout in `src/styles.css`**  
   - Adjust the layout, fonts, colors, and other styles of the CV by modifying the `styles.css` file to suit your preferences.

## Output

- The generated HTML file will be located at `output/CV.html`.
- The generated PDF file will be located at `output/CV.pdf`.

## Notes

- The PDF generation relies on `wkhtmltopdf`, which converts the generated HTML file into a PDF.
- Ensure that `wkhtmltopdf` is installed and available in your system's PATH.