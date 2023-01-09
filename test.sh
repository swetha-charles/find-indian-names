#!/usr/bin/env bash

#!/usr/bin/env bash

while IFS="\\n" read -r check_name
do 

    echo "$check_name"

done < <(tail -n +2 indian_names.csv)
 