#!/bin/bash 

for thing in ./*.pdf; do
	echo $thing
	title=`python pdfParser.py $thing`
	echo $title
	if [[ $title == "sorry $thing has no title" ]]; then
		echo "this shit has no title metadata"
		`mv $thing titleless/`
	else
		mv $thing $title
	fi
done

