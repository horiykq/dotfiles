#!/bin/sh

echo '    __               _       ____ ______   ______               '
echo '   / /_  ____  _____(_)_  __/ __ <  /__ \ / ____/               '
echo '  / __ \/ __ \/ ___/ / / / / / / / /__/ //___ \                 '
echo ' / / / / /_/ / /  / / /_/ / /_/ / // __/____/ /                 '
echo '/_/ /_/\____/_/  /_/\__, /\____/_//____/_____/                  '
echo '       __      __  /____/__                       __            '
echo '  ____/ /___  / /_/ __(_) /__  _____   ________  / /___  ______ '
echo ' / __  / __ \/ __/ /_/ / / _ \/ ___/  / ___/ _ \/ __/ / / / __ \'
echo '/ /_/ / /_/ / /_/ __/ / /  __(__  )  (__  )  __/ /_/ /_/ / /_/ /'
echo '\__,_/\____/\__/_/ /_/_/\___/____/  /____/\___/\__/\__,_/ .___/ '
echo '                                                       /_/      '

echo ""
echo ""

WORKSPACE="$HOME/workspace"
DOTFILES="$WORKSPACE/dotfiles"

ZSHRC="$HOME/.zshrc"
CONFIG="$HOME/.config"
GITCONFIG="$HOME/.gitconfig"
SSH="$HOME/.ssh"
SSHCONFIG="$HOME/.ssh/config"

PYENV="$HOME/.pyenv"
NODENV="$HOME/.nodenv"
GOENV="$HOME/.goenv"
RBENV="$HOME/.rbenv"

NODE_BUILD="$NODENV/plugins/node-build"
RUBY_BUILD="$RBENV/plugins/ruby-build"

echo ""
echo "=== 1. $WORKSPACE ディレクトリの作成 ==="
echo ""

mkdir -p "$WORKSPACE"

echo ""
echo "=== 1. END $WORKSPACE ディレクトリの作成 ==="
echo ""

echo ""
echo "=== 2. dotfiles リポジトリのクローン ==="
echo ""

if [ -d "$DOTFILES" ]; then
	echo "$DOTFILES が既に存在するため、クローンをスキップしました"
else
	git clone https://github.com/horiy0125/dotfiles.git "$DOTFILES"
fi

echo ""
echo "=== 2. END dotfiles リポジトリのクローン ==="
echo ""

echo ""
echo "=== 3. Homebrew のインストール ==="
echo ""

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo ""
echo "=== 3. END Homebrew のインストール ==="
echo ""

echo ""
echo "=== 4. Ansible のインストール"
echo ""

brew install ansible

echo ""
echo "=== 4. END Ansible のインストール"
echo ""
