DaVinci Project Server (Portable)
A fully portable, self-contained DaVinci Resolve Project Server environment with PostgreSQL, automated deployment scripts, backup and restore tooling, and optional Docker Compose support.
This project is designed for creators, studios, and technicians who want a clean, reproducible, and easily deployable Resolve project server without manual configuration or system-level dependencies.

FEATURES
Portable deployment with no system installation required
Automated setup using install.sh
Full backup and restore using backup.sh and restore.sh
Update and uninstall scripts for lifecycle management
Docker Compose support for GUI and PostgreSQL
Prebuilt deployable ZIP for quick installation
Documentation included in the docs folder
Licensed under GPLv3

QUICK START
1. 	Clone the repository
git clone  (github.com in Bing)
cd davinci-project-server
2. 	Run the installer
./install.sh
3. 	Start the server
docker-compose up -d
The Resolve Project Server GUI and PostgreSQL instance will start automatically.

INCLUDED SCRIPTS
install.sh - Install and initialize the server environment
update.sh - Update to the latest version
uninstall.sh - Clean removal of all components
backup.sh - Create a full backup of the project database
restore.sh - Restore from a backup
release.sh - Build a release package
bootstrap_repo.sh - Initialize repo structure (developer use)

PROJECT STRUCTURE
docs/ - GitHub Pages documentation
.github/ - Issue templates, CI configuration, policies
docker-compose.yml - GUI and PostgreSQL stack
*.sh - Deployment and maintenance scripts
LICENSE - GPLv3 license
VERSION - Current version
davinci-complete-deployable.zip - Prebuilt deployment package

DOCUMENTATION
Documentation is available in the docs folder or via GitHub Pages:
 (amigagod.github.io in Bing)

REQUIREMENTS
Docker and Docker Compose
Linux or macOS environment
DaVinci Resolve Studio (for client access)

SECURITY
Security guidelines and reporting instructions are available in:
.github/SECURITY.md

CONTRIBUTING
Contributions are welcome.
See the following files for guidelines:
.github/CONTRIBUTING
.github/CODE_OF_CONDUCT.md

LICENSE
This project is licensed under the GPLv3.
See the LICENSE file for details.

ROADMAP
Planned features and improvements are listed in:
.github/roadmap.txt

MAINTAINER
Maintained by:
AmigaGod
