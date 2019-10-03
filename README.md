Lab 5: More Bash and Intro to Git
Gaston Sanchez

Learning Objectives:
First contact with Git, and its basic workflow
Use Unix output redirection with > and >>
Use Unix pipes with |
Use filters: cut, paste, sort, uniq, grep
First contact with R script files
Learn about various exporting options in R

4.1
cut -f 3 -d "," nba2018-players.csv | tail +2 | sort | uniq > position-names.txt

4.2
cut -f 7 -d "," nba2018-players.csv | tail +2 | sort -nr | uniq -c > experience-counts.txt

4.3
grep -m1 "" nba2018-players.csv > LAC.csv
grep "LAC" nba2018-players.csv >> LAC.csv

4.4
cut -f 1,4,5 -d "," nba2018-players.csv | grep -m1 "" > gsw-height-weight.csv
grep "GSW" nba2018-players.csv| cut -f 1,4,5 -d "," >> gsw-height-weight.csv 

4.5
cut -f 1,9 -d "," nba2018-players.csv | grep -m1 "" > top10-salaries.csv
cut -f 1,9 -d "," nba2018-players.csv | sort -t"," -k2 -rn | head >> top10-salaries.csv 