# Dotfiles, glorious dotfiles
Here's the home for all dotfiles. And notes on setup actions for all configurations.
## NVIM
### Mason

The following utils are setup using Mason.
* bibtex-tidy
* black
* cmake-language-server
* docker-compose-language-service
* dockerfile-language-server
* isort
* latexindent
* lua-language-server
* mdformat
* pyright
* ruff
* selene
* stylua
* vale
    * Additional steps
        ```bash
        cd ~/.config/vale
        <mason-vale-install-dir>/vale init 
        <mason-vale-install-dir>/vale sync 
        ```
