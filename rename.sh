#!/bin/bash

UPPER_CASE="$1"
LOWER_CASE=`echo "${UPPER_CASE}" | tr '[A-Z]' '[a-z]'  | sed -r 's/\:\:/-/g'`

# substitute class names
find . -type f ! -path '*/\.git/*' ! -name rename.sh -exec sed -i -e "s/Mygem/$UPPER_CASE/g" {} \;

# substitute gem names
find . -type f ! -path '*/\.git/*' ! -name rename.sh -exec sed -i -e "s/mygem/$LOWER_CASE/g" {} \;

# substitute filenames and folders
for filename in `find . -name '*mygem*' ! -path '*/\.git/*' ! -name rename.sh`
do
	mv "$filename" "${filename/mygem/$LOWER_CASE}"
done

echo "Class name: $UPPER_CASE"
echo "Files and folder name: $LOWER_CASE"
