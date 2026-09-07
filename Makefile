.PHONY: all pdf preview clean

LATEXMK := latexmk
SOURCE := resume.tex
BUILD_DIR := build
PREVIEW_DIR := preview
OUTPUT_DIR := output/pdf

all: pdf

pdf:
	@mkdir -p $(BUILD_DIR)
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir=$(BUILD_DIR) $(SOURCE)

preview: pdf
	@mkdir -p $(PREVIEW_DIR) $(OUTPUT_DIR)
	cp $(BUILD_DIR)/resume.pdf $(OUTPUT_DIR)/resume-template.pdf
	@if command -v pdftoppm >/dev/null 2>&1; then \
		pdftoppm -png -singlefile -r 180 $(BUILD_DIR)/resume.pdf $(PREVIEW_DIR)/resume-template; \
	elif command -v magick >/dev/null 2>&1; then \
		magick -density 180 '$(BUILD_DIR)/resume.pdf[0]' -background white -alpha remove -strip $(PREVIEW_DIR)/resume-template.png; \
	else \
		echo "Install Poppler or ImageMagick to generate the PNG preview."; \
		exit 1; \
	fi

clean:
	$(LATEXMK) -C -outdir=$(BUILD_DIR) $(SOURCE)
