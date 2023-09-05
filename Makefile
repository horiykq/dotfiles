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

.PHONY: macos/vscode/init
macos/vscode/init:
	cat templates/vscode/settings.json > /Users/$(USER)/Library/Application\ Support/Code/User/settings.json

.PHONY: ansible/lint
ansible/lint:
	ansible-playbook setup.yml -vvvv --syntax-check

.PHONY: ansible/check
ansible/check:
	ansible-playbook setup.yml -vv --ask-become-pass --check

.PHONY: test
test: init zsh/init ansible/init ansible/setup

.PHONY: rustup
rustup:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
