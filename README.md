# Dotfile

My dotfile

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
