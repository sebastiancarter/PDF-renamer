import sys
from PyPDF2 import PdfFileReader

pdf_path = sys.argv[1]
pdf = PdfFileReader(str(pdf_path))


# TODO: handle err if can't read the file
# TODO: make output for if file isn't handled
# TODO: make run report - use fstrings cause that jazz is useful
# TODO: use try except instead of if else
for page in range(pdf.numPages):
    try:
        pageObject = pdf.getPage(page)
        print(pageObject.extractText())
        print("next Page")
    except:
        print("sorry, ", pdf_path, " is an invalid file")
