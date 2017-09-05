book.pdf: book.tex
	pdflatex -jobname=book $^

clean:
	@rm -f *.log *.aux book.pdf
.PHONY: clean
