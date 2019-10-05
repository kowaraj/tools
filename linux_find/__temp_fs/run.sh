find . -type f -exec ls -la {} \; | sort -k6,7 | tee >(wc -l) >(awk 'BEGIN {s=0} {s+=} END {print s}') 
