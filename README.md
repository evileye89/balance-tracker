# balance-tracker

# install
## dependencies
install needed dependencies:
- nix-shell
- direnv

## checkout
checkout project from guthub

# run
> cd <project_dir>
direnv will start a nix-shell including all needed dependencies when switching to project dir.

> rails s

go to localhost:3000

# init
> nix-shell \
  -p "ruby.withPackages (ps: with ps; [ rails ])" \
  -p bundix \
  --run "rails new . && bundle lock && bundix --ruby=ruby"

> nix-shell

> rails webpacker:install
