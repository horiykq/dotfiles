USER := $(shell whoami)

.PHONY: init
init:
	sh scripts/init.sh

.PHONY: zsh/init
zsh/init:
	cat templates/zsh/.zshrc > ~/.zshrc
	cat templates/zsh/.zprofile > ~/.zprofile

.PHONY: ansible/init
ansible/init:
	brew install ansible

.PHONY: ansible/setup
ansible/setup:
	ansible-playbook setup.yml -vv --ask-become-pass

.PHONY: ansible/lint
ansible/lint:
	ansible-playbook setup.yml -vvvv --syntax-check

.PHONY: ansible/check
ansible/check:
	ansible-playbook setup.yml -vv --ask-become-pass --check

.PHONY: ansible/test
ansible/test:
	ansible-playbook setup.yml -vvv --ask-become-pass

.PHONY: rustup/init
rustup/init:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

.PHONY: cask/chrome/install
cask/chrome/install:
	brew install --cask google-chrome

.PHONY: cask/docker/install
cask/docker/install:
	brew install --cask docker

.PHONY: cask/alacritty/install
cask/alacritty/install:
	brew install --cask alacritty

.PHONY: macos/vscode/init
macos/vscode/init:
	cat templates/vscode/settings.json > /Users/$(USER)/Library/Application\ Support/Code/User/settings.json
