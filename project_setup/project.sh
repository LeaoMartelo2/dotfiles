#!/bin/sh

set -xe

mkdir src
mkdir obj
wget https://raw.githubusercontent.com/LeaoMartelo2/dotfiles/main/project_setup/.clang-format
curl -o Makefile https://raw.githubusercontent.com/LeaoMartelo2/dotfiles/main/project_setup/makefile_raylib
touch .gitignore

ls

