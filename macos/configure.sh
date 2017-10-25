#!/bin/bash
set -e

echo "Set up finder preferences..."
bash finder.sh

echo "Set up keyboard preferences..."
bash keyboard.sh

echo "Set up privacy preferences..."
bash privacy.sh

echo "Set up screenshots preferences..."
bash screenshots.sh