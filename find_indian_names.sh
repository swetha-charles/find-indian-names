#!/usr/bin/env bash
# TODO try tab separated 

# Iterate over all the names that we want to check
# Each owner name will be a a string which is combination of first, middle and last name 
while IFS="\"" read -r first_quote owner_name rest
do 
    is_match=false
    
    # Iterate over known set of indian names 
    # For each indian name, check if the string from above loop contains the indian name
    while IFS="\\n" read -r indian_name
    do 
        if [[  "$owner_name" =~ .*(^|[^a-zA-Z0-9_])$indian_name($|[^a-zA-Z0-9_]).* ]]
        then
            is_match=true
            break;
        fi

    done < <(tail -n +2 indian_names.csv)

    if $is_match;
    then
        echo "\"$owner_name\" $rest, indian"
    else
        echo "\"$owner_name\" $rest, not indian"
    fi
 
done < <(tail -n +2 names_to_check.csv)