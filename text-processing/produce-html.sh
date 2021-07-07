#!/bin/bash

echo "<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
.pass {
	color: green;
}
.fail {
	color: red;
}
</style>
</head>
<body>" > table.html

echo "<table>" >> table.html;
print_header=false
while read INPUT ; do
  if $print_header;then
    echo "<tr><th>$INPUT" | sed -e 's/:[^,]*\(,\|$\)/<\/th><th>/g' >> table.html
    print_header=false
  fi
  echo "<tr><td>${INPUT//,/</td><td>}</td></tr>" >> table.html;
done < source-for-html.csv ;
echo "</table>" >> table.html

array=( $( tail -n +2 source-for-html.csv | awk -F',' '{print $4}'  | tr '\n' ' ' ) )
bench_mark=${array[3]}
echo "<p>90%: $bench_mark</p>" >> table.html

if (( $(echo "$bench_mark < 30.0" |bc -l) )); then
	status="Passed"
else 
	status="Failed"
fi

if [ $status = "Passed" ]; then
	echo "<p class='pass'>Status: $status</p>" >> table.html
else 
	echo "<p class='fail'>Status: $status</p>" >> table.html
fi

echo "</body>
</html>" >> table.html


# Resources: 
# https://unix.stackexchange.com/questions/105501/convert-csv-to-html-table
# https://stackoverflow.com/questions/49308651/how-to-extract-values-from-a-csv-file-to-unix-shell-script
# https://stackoverflow.com/questions/8654051/how-to-compare-two-floating-point-numbers-in-bash
# https://linuxize.com/post/how-to-compare-strings-in-bash/
