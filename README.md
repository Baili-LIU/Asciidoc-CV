# Asciidoc-CV

This project is designed to generate a CV from an AsciiDoc file, converting it into HTML and then to PDF.
`CV.adoc` → `CV.html` → `CV.pdf`

## Examples

You can view the generated CV examples below:

- [English CV (PDF)](output/CV_en.pdf)
- [French CV (PDF)](output/CV_fr.pdf)

### English CV Preview
<embed src="output/CV_en.pdf" type="application/pdf" width="100%" height="600px" />

### French CV Preview
<embed src="output/CV_fr.pdf" type="application/pdf" width="100%" height="600px" />

## Advantages
- Compared to editing a CV in Microsoft Word or Google Docs, this approach allows seamless integration with version control tools like Git, eliminating the need to manage multiple versions of a CV in a folder.
- Provides greater flexibility in layout customization (leveraging HTML and CSS skills) without being constrained by predefined templates.
- Since the CV source file is a plain text file (`.adoc`), it is easier for AI tools to analyze, translate, or optimize the content.

## Disadvantages
- Requires basic knowledge of Asciidoctor, HTML, and CSS.

This project is primarily intended for personal use. However, it can also serve as a template for others with similar needs.

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

3. **Generate the English HTML file**:
   ```sh
   make html-en
   ```

4. **Generate the French HTML file**:
   ```sh
   make html-fr
   ```

5. **Generate the English PDF file**:
   ```sh
   make pdf-en
   ```

6. **Generate the French PDF file**:
   ```sh
   make pdf-fr
   ```

7. **Generate all English files (HTML and PDF)**:
   ```sh
   make en
   ```

8. **Generate all French files (HTML and PDF)**:
   ```sh
   make fr
   ```

9. **Generate all files (English and French, HTML and PDF)**:
   ```sh
   make all
   ```

10. **Clean the output directory**:
    ```sh
    make clean
    ```

## Customize your CV

1. **Modify the content in `src/CV_en.adoc` and `src/CV_fr.adoc`**  
   - Replace the placeholder content in `CV_en.adoc` and `CV_fr.adoc` with your own profile, including your personal information, skills, and experience.

2. **Customize the layout in `src/styles.css`**  
   - Adjust the layout, fonts, colors, and other styles of the CV by modifying the `styles.css` file to suit your preferences.

## Output

- The generated English HTML file will be located at `output/CV_en.html`.
- The generated English PDF file will be located at `output/CV_en.pdf`.
- The generated French HTML file will be located at `output/CV_fr.html`.
- The generated French PDF file will be located at `output/CV_fr.pdf`.

## Notes

- The PDF generation relies on `wkhtmltopdf`, which converts the generated HTML file into a PDF.
- Ensure that `wkhtmltopdf` is installed and available in your system's PATH.