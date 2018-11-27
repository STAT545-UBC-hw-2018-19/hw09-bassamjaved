all: report.html report2.html

analysis1: report.html

analysis2: report2.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html
	rm -f histogram2.tsv histogram2.png report2.md report2.html
	
clean1:
	rm -f words.txt histogram.tsv histogram.png report.md report.html

clean2:
	rm -f words.txt histogram2.tsv histogram2.png report2.md report2.html

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'
	
report2.html: report2.rmd histogram2.tsv histogram2.png
	Rscript -e 'rmarkdown::render("$<")'
	
histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf
	
histogram2.png: histogram2.tsv
	Rscript -e 'library(ggplot2); qplot(matches, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: histogram.r words.txt
	Rscript $<
	
histogram2.tsv: histogram2.r words.txt
	Rscript $<

words.txt: /usr/share/dict/words
	cp $< $@
	
.PHONY: all clean analysis1 analysis2

# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'