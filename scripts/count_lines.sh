#!/bin/bash

set -e
set -u
set -o pipefail

#   User provided arguments
#   Full filepath to our list of BED files
BED_FILES=$1
#   Where should our output files go?
OUT_DIR=$2

#   Processing input files
#   Create our sample list array
LIST_ARRAY=($(cat ${BED_FILES}))

for i in "${LIST_ARRAY[@]}"
do
    #   Append files to end of single file
    wc -l ${i} >> "${OUT_DIR}"/bed_file_word_counts.txt
done
