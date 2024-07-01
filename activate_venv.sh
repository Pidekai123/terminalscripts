#!/bin/bash

# Define the path to your project and virtual environment
PROJECT_DIR=~/projects/nvidiaman
VENV_DIR=$PROJECT_DIR/venv

# Check if the virtual environment directory exists
if [ -d "$VENV_DIR" ]; then
	echo "Activating existing virtual environment..."
	source $VENV_DIR/bin/activate
else
	echo "Virtual environment not found. Creating a new one..."
	python3 -m venv $VENV_DIR
	source $VENV_DIR/bin/activate
fi

# Change to your project directory (optional)
cd $PROJECT_DIR/mlp
