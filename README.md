# dotfiles

## For macOS

1. Initialize

   ```
   /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/horiy0125/dotfiles/main/scripts/init.sh)"
   ```

2. Install Homebrew

   ```
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

3. Run below command and restart your terminal so that PATH changes take effect

   ```
   make zsh/init
   ```

4. Install Ansible

   ```
   make ansible/init
   ```

5. Setup

   ```
   make ansible/setup
   ```
