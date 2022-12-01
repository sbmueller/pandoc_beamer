FILENAME = slides

define run_pandoc
	pandoc -t beamer -s --toc --citeproc $(2) -V theme=metropolis --template=template.beamer --variable navigation=horizontal ${FILENAME}.md -o ${FILENAME}.$(1)
endef

${FILENAME}.pdf: ${FILENAME}.md
	$(call run_pandoc,pdf,)

tex: ${FILENAME}.md
	$(call run_pandoc,tex,)

withbib:
	$(call run_pandoc,tex,--biblatex --bibliography=${FILENAME}.bib)
	latexmk -pdf ${FILENAME}.tex
	rm ${FILENAME}.tex
	rm *.aux
	rm *.bbl
	rm *.bcf
	rm *.blg
	rm *.fdb_latexmk
	rm *.fls
	rm *.log
	rm *.nav
	rm *.out
	rm *.xml
	rm *.snm
	rm *.toc
	rm *.vrb

clean:
	rm ${FILENAME}.pdf
	rm ${FILENAME}.tex
	rm *.aux
	rm *.bbl
	rm *.bcf
	rm *.blg
	rm *.fdb_latexmk
	rm *.fls
	rm *.log
	rm *.nav
	rm *.out
	rm *.xml
	rm *.snm
	rm *.toc
	rm *.vrb
