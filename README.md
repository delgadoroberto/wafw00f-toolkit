# wafw00f Toolkit

[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A lightweight security toolkit for detecting Web Application Firewalls (WAFs) using [wafw00f](https://github.com/EnableSecurity/wafw00f) and an isolated Python virtual environment.

## Overview

**wafw00f Toolkit** provides a simple and reproducible way to install and use `wafw00f` without modifying the system Python environment.

The project uses a Python `venv` to isolate the tool and its dependencies from the operating system.

This repository is intended for:

- Security professionals
- Penetration testers
- Bug bounty hunters
- Cybersecurity students
- Security researchers
- Anyone learning WAF detection

## Features

- Isolated Python virtual environment
- Automated installation
- Simple command-line wrapper
- WAF detection using `wafw00f`
- Reproducible installation
- Minimal system dependencies
- Security-focused documentation

## Requirements

- Ubuntu 24.04 LTS or newer
- Python 3
- `python3-venv`
- Internet connectivity

## Installation

Clone the repository:

```bash
git clone https://github.com/delgadoroberto/wafw00f-toolkit.git
cd wafw00f-toolkit
```

Run the setup script:

```bash
./setup.sh
```

The script creates an isolated Python virtual environment and installs the required dependencies.

## Usage

Run `wafw00f` through the provided wrapper:

```bash
./run.sh https://example.com
```

For additional options:

```bash
./run.sh --help
```

## Virtual Environment

The project stores the Python virtual environment in:

```text
.venv/
```

The virtual environment is intentionally excluded from Git using `.gitignore`.

This means each user creates their own local environment by running:

```bash
./setup.sh
```

No Python packages or virtual environment files are committed to the repository.

## Example

Basic WAF detection:

```bash
./run.sh https://example.com
```

The tool attempts to identify whether a Web Application Firewall is protecting the target and, when possible, identifies the WAF technology.

## Project Structure

```text
wafw00f-toolkit/
├── README.md
├── LICENSE
├── .gitignore
├── requirements.txt
├── setup.sh
├── run.sh
├── docs/
│   └── usage.md
└── .github/
    └── workflows/
        └── markdown-lint.yml
```

## Security and Legal Notice

This project is intended for authorized security testing and educational purposes only.

Only use `wafw00f` against systems that you own or have explicit permission to test.

Unauthorized scanning or security testing may be illegal and could result in legal or disciplinary consequences.

The authors are not responsible for misuse of this project.

---

## 📄 License

This project is licensed under the MIT License. See the `LICENSE` file for details.
