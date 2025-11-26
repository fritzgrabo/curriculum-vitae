.PHONY: all clean view cv

# Main target - builds both versions
all: cv

cv: cv.pdf

cv.pdf: cv.tex
	@echo "Compiling CV..."
	pdflatex -interaction=nonstopmode cv.tex

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	@rm -f cv.pdf

# View the PDF (works on most Linux systems with xdg-open)
view: cv.pdf
	@xdg-open cv.pdf 2>/dev/null || open cv.pdf 2>/dev/null || echo "Please open cv.pdf manually"
