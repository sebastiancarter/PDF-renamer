#!/bin/bash 

touch runReport.txt


# remember to change this depending on what you run it on
for pdfFile in pdfs/march_19_2021/*.pdf; do
	echo $pdfFile
	`python pdfParser2.py $pdfFile > sample.txt`
	title=`head -1 sample.txt`
	if [[ $title == "sorry, $pdfFile is an invalid file" ]]; then
		echo "this shit has no title metadata"
		`echo $pdfFile >> runReport.txt`
	else
		mv sample.txt $title.txt
		mv $pdfFile $title.pdf
	fi



	echo $title




done

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "RUN REPORT:"
cat runReport.txt
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

