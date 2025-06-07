#!/bin/bash

echo -e "Creating parser...\n"
rm -rf javacc/*
javacc Bela.jj

if [ $? -ne 0 ]; then
    echo -e "\nError: Failed to create parser."
    exit 1
fi

echo -e "\nCompiling parser...\n"
mv *.java javacc/
javac -d bin/ javacc/*.java

if [ $? -ne 0 ]; then
    echo -e "\nError: Failed to compile parser."
    exit 1
fi

echo -e "Parser created and compiled successfully!"