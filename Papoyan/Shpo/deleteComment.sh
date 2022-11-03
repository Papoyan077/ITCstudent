#!/bin/bash

read -p "Enter the file path " path

sed -i 's/#//g' $path

