#!/bin/bash

set -e

echo "Updating datastar submodule..."
git submodule update --remote upstream

echo "Copying upstream/library to root..."
if [ -d "upstream/library" ]; then
    cp -r upstream/library/* .
    echo "Successfully copied upstream/library contents to root directory"
else
    echo "Warning: upstream/library directory not found"
    exit 1
fi

echo "Update complete!"