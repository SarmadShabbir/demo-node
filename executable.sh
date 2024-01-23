#!/bin/bash

# Check and install required Node modules locally
required_modules=("express" "cors" "nodemon" "path" "twig")

for module in "${required_modules[@]}"; do
  if ! [ -d "node_modules/$module" ]; then
    echo "Installing $module locally..."
    sudo npm install $module
  else
    echo "$module is already installed locally."
  fi
done

# Run your Node.js script
npx nodemon app.js
