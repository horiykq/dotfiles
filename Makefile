.PHONY: init
init:
	sh scripts/init.sh

.PHONY: homebrew/init
homebrew/init:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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

.PHONY: ansible/test
ansible/test:
	ansible-playbook setup.yml -vv --ask-become-pass --check

.PHONY: rustup
rustup:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
