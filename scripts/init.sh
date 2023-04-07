#!/bin/zsh

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
