#!/bin/bash


if [ "$#" -ne 2 ]; then
    echo "Format: $0 source_folder destination_folder"
    exit 1
fi


s_folder=$1
d_folder=$2


if [ ! -d "$s_folder" ]; then
    echo "Source folder '$s_folder' not found."
    exit 1
fi


if [ ! -d "$d_folder" ]; then
    echo "Destination folder '$d_folder' not found."
    exit 1
fi

echo "Copying files from '$s_folder' to '$d_folder'..."
cp -r "$s_folder"/* "$d_folder"

echo "Copy successful."