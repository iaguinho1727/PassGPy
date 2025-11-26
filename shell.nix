{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # Name of the environment
  name = "python-env";

  # Packages available in the shell
  buildInputs = [
    pkgs.python3
    pkgs.python3Packages.virtualenv
    pkgs.python3Packages.pip
  ];

  # Optional: automatically create and activate a virtual environment
  shellHook = ''
    if [ ! -d .venv ]; then
      echo "Creating virtual environment..."
      python -m venv .venv
    fi
    source .venv/bin/activate
    echo "Virtual environment activated!"
    pip install -r requirements.txt
  '';
}