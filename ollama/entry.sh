#!/bin/bash

echo "Starting Ollama server..."
ollama serve &
pid=$!

echo "Waiting for Ollama server to start..."
sleep 5

echo "Pulling the smollm:360m model..."
#ollama pull smollm:360m
ollama pull gemma4:26b

echo "Model pulled successfully."

wait $pid