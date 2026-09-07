.PHONY: all new-grad experienced preview clean

LATEXMK := latexmk
BUILD_DIR := build
PREVIEW_DIR := preview
OUTPUT_DIR := output/pdf
NEW_GRAD_SOURCE := templates/new-grad-resume.tex
EXPERIENCED_SOURCE := templates/experienced-resume.tex
NEW_GRAD_BUILD_DIR := $(BUILD_DIR)/new-grad
EXPERIENCED_BUILD_DIR := $(BUILD_DIR)/experienced

all: new-grad experienced

new-grad:
	@mkdir -p "$(NEW_GRAD_BUILD_DIR)"
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir="$(NEW_GRAD_BUILD_DIR)" "$(NEW_GRAD_SOURCE)"

experienced:
	@mkdir -p "$(EXPERIENCED_BUILD_DIR)"
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir="$(EXPERIENCED_BUILD_DIR)" "$(EXPERIENCED_SOURCE)"

preview: all
	@mkdir -p "$(PREVIEW_DIR)" "$(OUTPUT_DIR)"
	cp "$(NEW_GRAD_BUILD_DIR)/new-grad-resume.pdf" "$(OUTPUT_DIR)/new-grad-resume.pdf"
	cp "$(EXPERIENCED_BUILD_DIR)/experienced-resume.pdf" "$(OUTPUT_DIR)/experienced-resume.pdf"
	@if command -v pdftoppm >/dev/null 2>&1; then \
		pdftoppm -png -singlefile -f 1 -l 1 -r 180 "$(NEW_GRAD_BUILD_DIR)/new-grad-resume.pdf" "$(PREVIEW_DIR)/new-grad-resume"; \
		pdftoppm -png -singlefile -f 1 -l 1 -r 180 "$(EXPERIENCED_BUILD_DIR)/experienced-resume.pdf" "$(PREVIEW_DIR)/experienced-resume-page-1"; \
		pdftoppm -png -singlefile -f 2 -l 2 -r 180 "$(EXPERIENCED_BUILD_DIR)/experienced-resume.pdf" "$(PREVIEW_DIR)/experienced-resume-page-2"; \
	elif command -v magick >/dev/null 2>&1; then \
		magick -density 180 "$(NEW_GRAD_BUILD_DIR)/new-grad-resume.pdf[0]" -background white -alpha remove -strip "$(PREVIEW_DIR)/new-grad-resume.png"; \
		magick -density 180 "$(EXPERIENCED_BUILD_DIR)/experienced-resume.pdf[0]" -background white -alpha remove -strip "$(PREVIEW_DIR)/experienced-resume-page-1.png"; \
		magick -density 180 "$(EXPERIENCED_BUILD_DIR)/experienced-resume.pdf[1]" -background white -alpha remove -strip "$(PREVIEW_DIR)/experienced-resume-page-2.png"; \
	else \
		echo "Install Poppler or ImageMagick to generate the PNG previews."; \
		exit 1; \
	fi

clean:
	$(LATEXMK) -C -outdir="$(NEW_GRAD_BUILD_DIR)" "$(NEW_GRAD_SOURCE)"
	$(LATEXMK) -C -outdir="$(EXPERIENCED_BUILD_DIR)" "$(EXPERIENCED_SOURCE)"
