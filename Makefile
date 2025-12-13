all: resume-1pager.pdf resume.pdf cv.pdf

# Build all cover letters
coverletters: $(patsubst %.tex,%.pdf,$(wildcard coverletter/*.tex))

coverletter/%.pdf: coverletter/%.tex
	pdflatex --interaction=batchmode $< > /dev/null 2>&1
	echo "Generated $@"
	open $@

TEX_FILES = resume-1pager.tex resume.tex cv.tex

force: resume-1pager.tex resume.tex cv.tex
	make all

cv.pdf: cv.tex
	pdflatex --interaction=batchmode cv.tex > /dev/null 2>&1
	echo "Generated Vivek's CV"
	open cv.pdf

resume.pdf: resume.tex
	pdflatex --interaction=batchmode resume.tex > /dev/null 2>&1
	echo "Generated Vivek's resume"
	open resume.pdf 

resume-1pager.pdf: resume-1pager.tex
	pdflatex --interaction=batchmode resume-1pager.tex > /dev/null 2>&1
	echo "generated Vivek's 1 pager resume" 
	open resume-1pager.pdf

cleanCV:
	rm -f cv.aux cv.toc cv.log cv.pdf

cleanResume1pager:
	rm -f resume-1pager.aux resume-1pager.toc resume-1pager.log resume-1pager.pdf

cleanResume:
	rm -f resume.aux resume.toc resume.log resume.pdf

clean:
	rm -f *.aux *.toc *.log *.pdf
	rm -f coverletter/*.aux coverletter/*.log coverletter/*.pdf

realclean:
	rm -f *.aux *.toc *.log *.pdf *.pdf~ *.tex~
