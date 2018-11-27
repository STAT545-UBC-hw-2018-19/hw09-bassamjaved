# hw09-bassamjaved
hw09-bassamjaved created by GitHub Classroom

### Required packages
tidyverse<br/>

### Purpose

This is a repository containing a submission for HW09 assignment for STAT 547 to demonstrate the use of `Makefile`. Note that the original analysis of word count frequency was created by [Jennifer Bryan (GitHub: jennybc)](https://github.com/jennybc), located [here](https://github.com/STAT545-UBC/make-activity).

In this homework repo, I have labelled jennybc's analysis as `analysis1`, which outputs words.txt, histogram.tsv, histogram.png, report.md, and report.html, using the files histogram.R and report.rmd.

I have created a new analysis, labelled `analysis2` which counts the number of words that begin with each letter of the English alphabet. The outputs are words.txt, histogram2.tsv, histogram2.png, report2.md, and report2.html, using the files histogram2.R and report2.rmd.

### Contents

Files made by `make analysis2`:<br/>
[word.txt](https://github.com/STAT545-UBC-students/hw09-bassamjaved/blob/master/words.txt) list of words from `/usr/share/dict/words` <br/>
[histogram2.tsv](https://github.com/STAT545-UBC-students/hw09-bassamjaved/blob/master/histogram2.tsv) frequency table of words beginning with each of the letters in the English alphabet <br/>
[histogram2.png](https://github.com/STAT545-UBC-students/hw09-bassamjaved/blob/master/histogram2.png) image of initial letters histogram <br/>
[report2.html](https://github.com/STAT545-UBC-students/hw09-bassamjaved/blob/master/report2.html) report displaying result of `analysis2` <br/>

Note that the above files can also be made by the command `make all`, which will also make the files from jennybc's original analysis. I have also created a phony target, `make analysis1` which makes only jennybc's analysis.

Files used by `make analysis2`:<br/>
[report2.rmd](https://github.com/STAT545-UBC-students/hw09-bassamjaved/blob/master/report2.Rmd) RMarkdown file for making report2 <br/>
[histogram2.R](https://github.com/STAT545-UBC-students/hw09-bassamjaved/blob/master/histogram2.R) script for creating a frequency table of initial letters <br/>

### Author

Bassam Javed<br/>
_GitHub.com username\:_ bassamjaved

### Link to repository

[https://github.com/STAT545-UBC-students/hw09-bassamjaved](https://github.com/STAT545-UBC-students/hw09-bassamjaved)
