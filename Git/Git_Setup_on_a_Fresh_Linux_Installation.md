# Git Setup on a Fresh Linux Installation

This guide explains how to configure Git on a new Linux PC (Debian/Ubuntu family) so you can immediately start working with your own GitHub repositories.

---

## 1. Check if Git is Installed

Most Debian/Ubuntu systems already include Git. Verify with:

```bash
git --version
````

If Git is not installed, install it:

```bash
sudo apt update
sudo apt install git -y
```

---

## 2. Configure Global Identity

Git requires your **name** and **email address** for commits.

```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```

You can confirm the settings:

```bash
git config --list
```

---

## 3. Set Default Branch Name

GitHub now uses `main` as the default branch. Configure Git to create new repositories with `main`:

```bash
git config --global init.defaultBranch main
```

---

## 4. Optional: Editor and Color

Set your preferred editor (example: Vim):

```bash
git config --global core.editor "vim"
```

Enable colored output:

```bash
git config --global color.ui auto
```

---

## 5. Generate and Register an SSH Key (Recommended)

To authenticate with GitHub without typing your password every time, create an SSH key.

### 5.1 Generate a New Key

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Press **Enter** to accept defaults, or set a custom file path. Optionally add a passphrase.

### 5.2 Start SSH Agent and Add Key 
(this step may proceed automatically by the prior procedure 5.1)

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

### 5.3 Add the Public Key to GitHub

Copy the key:

```bash
cat ~/.ssh/id_ed25519.pub
```

Then:

1. Go to [GitHub → Settings → SSH and GPG keys](https://github.com/settings/keys)
2. Click **New SSH key**
3. Paste the copied key and save

Verify:

```bash
ssh -T git@github.com
```

You should see:

```
Hi username! You've successfully authenticated...
```

---

## 6. Clone a GitHub Repository

Now you can clone your repositories:

```bash
git clone git@github.com:username/repository.git
```

---

## 7. First Commit Example

Inside your cloned repo:

```bash
echo "# Hello Git" > README.md
git add README.md
git commit -m "Initial commit"
git push origin main
```

---

## 8. Summary of Essential Commands

| Purpose                  | Command Example                              |
| ------------------------ | -------------------------------------------- |
| Check Git version        | `git --version`                              |
| Configure username/email | `git config --global user.name "Your Name"`  |
| List current config      | `git config --list`                          |
| Generate SSH key         | `ssh-keygen -t ed25519 -C "you@example.com"` |
| Add SSH key to agent     | `ssh-add ~/.ssh/id_ed25519`                  |
| Test GitHub connection   | `ssh -T git@github.com`                      |
| Clone repository         | `git clone git@github.com:user/repo.git`     |
| Add and commit changes   | `git add . && git commit -m "message"`       |
| Push changes to GitHub   | `git push origin main`                       |

---

## 9. Optional: Store GitHub Credentials via HTTPS

If you prefer HTTPS (instead of SSH):

```bash
git config --global credential.helper store
```

On first push, Git will ask for your GitHub credentials and save them locally.

---

## Done ✅

Your Linux system is now configured to work with Git and GitHub. You can clone, commit, and push code seamlessly.

```

---
