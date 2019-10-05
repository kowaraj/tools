find ./__temp_fs/ -type f -exec ls -la {} \; | sort -k6,7 | tee >(wc -l) >(awk 'BEGIN {s=0} {s+=$5} END {print s}')
