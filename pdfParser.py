import sys
from PyPDF2 import PdfFileReader

pdf_path = sys.argv[1]
pdf = PdfFileReader(str(pdf_path))


Title = pdf.documentInfo['/Title']

try(Title != ''):
    print(Title)
except:
    # TODO: append run report if exception
    # TODO: print file name
    print("sorry " + pdf_path + " has no title")

