#!/bin/bash
if [ "$EUID" -ne 0 ]; then
    echo "what are you doing?"
else
    echo "what the FUCK are you doing?"
fi
