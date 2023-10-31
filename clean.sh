#!/bin/sh

# Check if the buildroot directory exists

if [ -d "buildroot" ]; then
    # Change to the buildroot directory
    cd buildroot

    # Run the make distclean command
    make distclean

    # Change back to the original directory
    cd ..
else
    echo "Error: 'buildroot' directory not found."
fi
