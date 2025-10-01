#!/bin/bash

echo "[Re]creating virtual environment and installing dependencies.."
python -m venv .venv --clear
source .venv/bin/activate
pip install -r requirements.txt

echo "Installing Jupyter kernel spec for $(pwd)/.venv.."
python -m ipykernel install --user --env VIRTUAL_ENV "$(pwd)/.venv" --name=pydantic-essentials --display-name "Pydantic Essentials"

echo "Select kernel 'pydantic-essentials' when running :MoltenInit"
