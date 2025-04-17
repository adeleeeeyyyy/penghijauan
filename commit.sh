#!/bin/bash

FILE="output.txt"
COUNT=0  # Inisialisasi counter commit

# Fungsi untuk menangani SIGINT (CTRL+C)
trap 'echo -e "\nTotal commits: $COUNT"; exit' SIGINT

while true; do
    for char in {a..z} {A..Z} {0..9}; do
        echo "$char" >> "$FILE"         
        git add .
        git commit -m "$char"
        git push origin main  # Ganti 'main' jika branch berbeda
        
        ((COUNT++))  # Tambah counter commit
        sleep 1
    done
done

