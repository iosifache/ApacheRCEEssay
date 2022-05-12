#!/bin/bash

# Check if pdftoppm is available
if ! command -v pdftoppm &> /dev/null
then
    echo "[!] pdftoppm could not be found! Please install the poppler-utils package."
    exit
fi

# Export the first pages of the documents
pdftoppm document/export.pdf document/preview -png -f 1 -singlefile
pdftoppm presentation/export.pdf presentation/preview -png -f 1 -singlefile