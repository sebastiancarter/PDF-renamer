#!/bin/bash 

touch titleless.txt

for pdfFile in ./*.pdf; do
	echo $pdfFile
	title=`python pdfParser.py $pdfFile`
	echo $title
	if [[ $title == "sorry $pdfFile has no title" ]]; then
		echo "this shit has no title metadata"
		`echo $pdfFile >> titleless.txt`
	else
		mv $pdfFile $title
	fi
done

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "here's the shit that didn't have title metadata"

cat titleless.txt

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
rm ./titleless.txt
