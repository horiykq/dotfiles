# dotfiles

## For macOS

1. Initialize

   ```
   /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/horiy0125/dotfiles/main/scripts/init.sh)"
   ```

2. Install Homebrew

   ```
   make homebrew/init
   ```

3. Run below command so that PATH changes take effect

   ```
   exec "$SHELL"
   ```

4. Install Ansible

   ```
   make ansible/init
   ```

5. Setup

   ```
   make ansible/setup
   ```

### Casks

- google-chrome
- docker
- alacritty
