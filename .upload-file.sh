#!/bin/bash

cd /compiled-pdfs/;
curl --header "Content-Type: multipart/form-data" -F file=@$(ls -1 *.pdf | head -n 1 | tr -d '\n' ) https://uz.sns.it/~trenta3/Zannier1617/upload.php?key=${BALBO_KEY}


