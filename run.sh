#!/usr/bin/env bash
set -euo pipefail

# Create virtual environment if it doesn't exist
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
fi

# Activate virtual environment
source .venv/bin/activate

# Upgrade pip and install project with dependencies
pip install --upgrade pip
pip install -e .

# Run the application
qspectrumanalyzer "$@"
