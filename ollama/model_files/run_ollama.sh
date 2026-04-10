#!/bin/bash

echo "Starting Ollama server..."
#ollama serve &  # Start Ollama in the background
echo "Ollama is ready, creating the model..."

ollama create stg-standard -f model_files/Modelfile
ollama run stg-standard
#ollama run llama3.2
