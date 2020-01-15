# Dotfile

My dotfile

## Installation

Clone this repo and copy file you want.

```bash
git clone git@github.com:MilesChou/dotfiles.git

# Copy .config for fish shell
cp -R .config ~/

# Copy git config
cp .gitconfig ~/

# Copy .vimrc
cp .vimrc ~/
```

* [`.bash_profile`](.bash_profile)
* [`.gitconfig`](.gitconfig)
* [`.gitignore`](.gitignore)
* [`.vimrc`](.vimrc)

## Composer installation

```bash
brew install composer

composer config -g github-oauth.github.com ${GITHUB_ACCESS_TOKEN}
composer config -g cache-files-maxsize 5G
composer global require hirak/prestissimo
```
