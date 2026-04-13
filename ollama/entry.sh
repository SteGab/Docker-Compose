#!/bin/bash

MODEL_NAME="gemma4:26b"
#MODEL_NAME="smollm:360m"
#MODEL_NAME="qwen3:14b"


echo "Starting Ollama server..."
ollama serve &
pid=$!

echo "Waiting for Ollama server to start..."
sleep 5

echo "Pulling the $MODEL_NAME model..."
ollama pull $MODEL_NAME

echo "Model pulled successfully."

wait $pid