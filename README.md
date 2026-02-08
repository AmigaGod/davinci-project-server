
/==============================================\
|      DaVinci Project Server (Portable)       |
\==============================================/


A fully portable, self-contained DaVinci Resolve Project Server environment with PostgreSQL, automated deployment scripts, backup/ restore tooling, and optional Docker Compose support.
This project is designed for creators, studios, and technicians who want a clean, reproducible, and easily deployable Resolve project server without manual configuration or system-level dependencies.

Features
• 	Portable deployment — no system installation required
• 	Automated setup via install.sh
• 	Full backup and restore with backup.sh and restore.sh
• 	Update and uninstall scripts for clean lifecycle management
• 	Docker Compose support for GUI + PostgreSQL
• 	Prebuilt deployable ZIP for quick installation
• 	Documentation included (docs/)
• 	GPLv3 licensed open-source project

Quick Start
1. 	Clone the repository
git clone https://github.com/AmigaGod/davinci-project-server.git
cd davinci-project-server
2. 	Run the installer
./install.sh
3. 	Start the server
docker-compose up -d
The Resolve Project Server GUI and PostgreSQL instance will start automatically.

Included Scripts
install.sh — Install and initialize the server environment
update.sh — Update to the latest version
uninstall.sh — Clean removal of all components
backup.sh — Create a full backup of the project database
restore.sh — Restore from a backup
release.sh — Build a release package
bootstrap_repo.sh — Initialize repo structure (dev use)

Project Structure
.
├── docs/                     (GitHub Pages documentation)
├── .github/                  (Issue templates, CI, policies)
├── docker-compose.yml        (GUI + PostgreSQL stack)
├── *.sh                      (Deployment and maintenance scripts)
├── LICENSE                   (GPLv3 license)
├── VERSION                   (Current version)
└── davinci-complete-deployable.zip

Documentation
Full documentation is available via GitHub Pages:
 (amigagod.github.io in Bing)
Or locally in the docs/ folder.

🛠 Requirements
• 	Docker and Docker Compose
• 	Linux or macOS environment
• 	DaVinci Resolve Studio (for client access)

Security
Security guidelines and reporting instructions are available in:
.github/SECURITY.md

Contributing
Contributions are welcome.
Please read:
.github/CONTRIBUTING
.github/CODE_OF_CONDUCT.md
before submitting pull requests.

License
This project is licensed under the GPLv3.
See LICENSE for details.

Roadmap
See .github/roadmap.txt for planned features and future improvements.

Maintainers
This project is maintained by:
Harald Hellesø (AmigaGod)
============================================================
