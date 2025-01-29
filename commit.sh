#!/bin/bash

FILE="output.txt"

while true; do
    for char in {a..z} {A..Z} {0..9}; do
        echo "$char" >> "$FILE"         
        git add .
        git commit -m "$char"
        git push origin main  # Ganti 'main' jika branch berbeda
        
        sleep 1
    done
done

