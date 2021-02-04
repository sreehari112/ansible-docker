#!/bin/bash

TARGET=/incoming/
PROCESSED=/processed/

inotifywait -m -e create -e moved_to --format "%f" $TARGET \
        | while read FILENAME
                do
                        echo Detected $FILENAME, moving and zipping
                        echo Detected $FILENAME, moving and zipping >> log.txt
			mv "$TARGET/$FILENAME" "$PROCESSED/$FILENAME"
                        gzip "$PROCESSED/$FILENAME"
                done
