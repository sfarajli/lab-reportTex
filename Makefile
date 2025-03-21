all: main.pdf

main.tex: main.org
	./build-tex > $@

main.pdf: main.tex
	pdflatex $<

clean: 
	rm -f main.pdf

deepclean:
	rm -f    \
	main.aux     \
	texput.log   \
	main.tex     \
	main.bcf     \
	main.log     \
	main.out     \
	main.pdf     \
	main.run.xml \
	main.toc
