# find-indian-names

To run the script, make sure first the data is in place in the correct files. To do this, make sure:
1. the file "indian_names.csv" contains the known set of Indian names. See the example file given for the correct format. 
2. the file "names_to_check.csv" contains all the names that we want to test. See the example file given for the correct format. 

After this run the following command to run the script: `./find_indian_names.sh > output.csv`. 

This will create a new file called `output.csv`. The format will be similar to the "names_to_check.csv" file but with the addition of an extra column which indentifies each row as either Indian or not. 