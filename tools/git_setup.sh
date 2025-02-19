#!/usr/bin/bash
# This script sets up Docker, Flask, and Git on Fedora, and verifies the installation.
# It expects a specific Python version (Desired_PyVersion) to be pre-installed.

DESIRED_PY_VERSION="Python 3.13.1"

echo "Starting environment setup..."

# Function to log messages
log_message() {
    echo -e "[INFO] $1"
}

# Function to log errors and exit
log_error() {
    echo -e "[ERROR] $1" >&2
    exit 1
}

sudo dnf upgrade -y || log_error "failed to upgrade the system"

# Install Git
log_message "Installing Git..."
sudo dnf install -y git || log_error "Failed to install Git."

# Verify Git installation
log_message "Verifying Git installation..."
git --version || log_error "Git installation verification failed."

log_message "Git setup completed successfully!"

echo "-----------------------------------------------"
echo "run these commands below"
echo "git config --global user.name <Your Name>"
echo "git config --global user.email <your.email@example.com>"
echo "-----------------------------------------------"

cat << "EOF"
1. Generate an SSH Key (Recommended for Authentication)
Check for an existing SSH key:

$ ls -al ~/.ssh
If you see files like id_rsa and id_rsa.pub, you already have an SSH key. Otherwise, generate a new one.

Generate a new SSH key:
$ ssh-keygen -t ed25519 -C "your.email@example.com"

Press Enter to accept the default file location and optionally set a passphrase.

Start the SSH agent:

$ eval "$(ssh-agent -s)"
Add your SSH key to the agent:

$ ssh-add ~/.ssh/id_ed25519
Copy the public key:

$ cat ~/.ssh/id_ed25519.pub
Copy the output of this command.

2. Add the SSH Key to Your GitHub Account
Go to GitHub SSH settings.
Click New SSH key.
Paste your public key and give it a title.
Click Add SSH key.

3. Test Your SSH Connection
Test the connection to GitHub:

$ ssh -T git@github.com

You should see a message like:

vbnet
Hi username! You've successfully authenticated, but GitHub does not provide shell access.

4. Clone a Repository (Optional)
Clone a GitHub repository to test:

$ git clone git@github.com:username/repository.git
Replace username and repository with your GitHub username and repository name.

5. Set Up HTTPS Authentication (Optional)
If you prefer HTTPS over SSH:

Use a Personal Access Token (PAT) instead of your password.
Generate a PAT from GitHub Developer Settings.
Clone a repository using HTTPS:

$ git clone https://github.com/username/repository.git
When prompted for a username and password, use your GitHub username and the PAT as the password.

6. Verify Your Git Configuration
Confirm your Git setup:

$ git config --list
This ensures that Git is properly configured for use with GitHub on the system.

EOF
