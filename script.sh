#!/bin/bash

echo "Running script..."
echo ""
PATH_TO_COPY=/var/lib/snapd/desktop/applications/
PATH_TO_SEND=/usr/share/applications/

VALOR=$( ls $PATH_TO_COPY | grep .desktop )


for APP in $VALOR
do
    echo "Copying $APP"
    $(cp $PATH_TO_COPY/$APP $PATH_TO_SEND )
done

echo ""
echo "Done"