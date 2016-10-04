#!/bin/bash

export CURRENT_BRANCH=$(if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo $TRAVIS_BRANCH; else echo $TRAVIS_PULL_REQUEST_BRANCH; fi)

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
    curl --header "Content-Type: multipart/form-data" -F 'file=@lezioni.pdf;filename=Zannier1617-${CURRENT_BRANCH}.pdf' https://uz.sns.it/~trenta3/Zannier1617/upload.php?key=${BALBO_KEY}
else
    echo "Siamo in una PR, non aggiorno"
fi

