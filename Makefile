.PHONY: init
init: homebrew/init ansible/init

.PHONY: homebrew/init
homebrew/init:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	cat templates/zsh/.zprofile > ~/.zprofile
	exec "$SHELL"

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
