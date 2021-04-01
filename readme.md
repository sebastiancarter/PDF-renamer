# pdf parser

renames all the pdfs in your current directory to their actual title (pdfParser.py does this using pdf metadata but as most pdfs do not have title metadata I made pdfParser2.py which outputs the entire pdf as plaintext which is then used by the bash script wrapper.sh which uses the first line of the pdf as the new title.

## requirements
- Python 3
	- python libraries:
		- PyPDF2
- bash
- currently does not work for windows
