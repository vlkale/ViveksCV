all: cv.pdf resume.pdf

TEX_FILES = coverletter-slides.tex content_coverletterLLNL-slides.tex coverletterLLNL.tex cv.tex resume.tex

force:
	rm -f coverletter-slides.pdf
	make all

coverletterLLNL.pdf: coverletterLLNL.tex
	pdflatex viveksCVforLLNLp107.tex

cv.pdf: cv.tex
	pdflatex cv.tex

resume.pdf: resume.tex
	pdflatex resume.tex

HLF-app.pdf: HLF-app.tex
	pdflatex HLF-app.tex


#The coverletter-slides.pdf file contains work on 
coverletter-slides.pdf: coverletter-slides.tex content_coverletterLLNL-slides.tex
	pdflatex coverletter-slides.tex

cleanSlides:
	rm -f coverletter-slides.aux coverletter-slides.toc coverletter-slides.log coverletter-slides.pdf

cleanCV:
	rm -f cv.aux cv.toc cv.log cv.pdf

cleanCoverLetterLLNL:
	rm -f coverletterLLNL.aux coverletterLLNL.toc coverletterLLNL.log coverletterLLNL.pdf

clean:
	rm -f *.aux *.toc *.log *.bbl *.blg coverletter-slides.pdf coverletterLLNL.pdf cv.pdf resume.pdf

realclean:
	rm -f *.aux *.toc *.log *.bbl *.blg coverletter-slides.pdf coverletterLLNL.pdf
