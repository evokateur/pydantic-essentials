#!/bin/bash

echo "Making sure you have the latest version of uv.."
uv self update

echo "Creating virtual environment and installing dependencies.."
uv sync

echo "Installing Jupyter kernel spec for $(pwd)/.venv.."
uv run python -m ipykernel install --user --env VIRTUAL_ENV "$(pwd)/.venv" --name=pydantic-essentials --display-name "Pydantic Essentials"

echo "Use the 'pydantic-essentials' kernel in Jupyter notebooks."
echo
echo "To launch Jupyter Lab in the uv environment:"
echo " uv run --with jupyter jupyter lab"
echo
echo "To launch nvim in the uv environment (for molten.nvim):"
echo " uv run nvim"
