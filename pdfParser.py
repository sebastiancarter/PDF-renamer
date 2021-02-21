import sys
from PyPDF2 import PdfFileReader

pdf_path = sys.argv[1]
pdf = PdfFileReader(str(pdf_path))


Title = pdf.documentInfo['/Title']



if(Title == ''):
    print("sorry " + pdf_path + " has no title")
    #return ("sorry " + pdf_path + " has no title")
else:
    print(Title)

