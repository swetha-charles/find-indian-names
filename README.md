# find-indian-names

To run the script, make sure first the data is in place in the correct files. To do this, make sure:
1. the file "indian_names.tsv" contains the known set of Indian names. See the example file given for the correct format. If the data is in an excel or numbers spreadsheet, export it in the tab separated format. 
2. the file "names_to_check.tsv" contains all the names that we want to test. See the example file given for the correct format. If the data is in an excel or numbers spreadsheet, export it in the tab separated format. 

After this run the following command to run the script: `./find_indian_names.sh > output.tsv`. 

This will create a new file called `output.tsv`. The format will be similar to the "names_to_check.csv" file but with the addition of an extra column which indentifies each row as either Indian or not. 

Note that a header is not added to the output automatically - this will need to be done manually. 