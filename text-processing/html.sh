#!/bin/bash

echo "<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
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

echo "</body>
</html>" >> table.html