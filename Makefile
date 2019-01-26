FILENAME = slides
ASP ?= 43

define run_pandoc
	pandoc -t beamer -s --toc --filter pandoc-citeproc $(2) -V theme=metropolis -V colortheme=$(3) --template=template.beamer --variable aspectratio=${ASP} --variable navigation=horizontal ${FILENAME}.md -o ${FILENAME}.$(1)
endef

${FILENAME}.pdf: ${FILENAME}.md
	$(call run_pandoc,pdf,,owl)

tex: ${FILENAME}.md
	$(call run_pandoc,tex,,owl)

light:
	$(call run_pandoc,pdf,,default)

withbib:
	# takes super long
	$(call run_pandoc,tex,--biblatex --bibliography=${FILENAME}.bib,owl)
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
