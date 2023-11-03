all: cv.pdf resume.pdf resume-1pager.pdf

TEX_FILES = coverletter-slides.tex content_coverletterLLNL-slides.tex resume-1pager.tex coverletterLLNL.tex cv.tex resume.tex

force:
	rm -f coverletter-slides.pdf
	make all

coverletterLLNL.pdf: coverletterLLNL.tex
	pdflatex viveksCVforLLNLp107.tex

cv.pdf: cv.tex
	pdflatex --interaction=batchmode cv.tex > /dev/null 2>&1
	echo "Generated Vivek's CV"
	open cv.pdf

resume.pdf: resume.tex
	pdflatex --interaction=batchmode resume.tex
	echo "Generated Vivek's resume"
	open resume.pdf 

resume-1pager.pdf: resume-1pager.tex
	pdflatex --interaction=batchmode resume-1pager.tex
	echo "generated Vivek's 1 pager resume" 
	open resume-1pager.pdf

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
