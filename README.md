# balance-tracker

# init
> nix-shell \
  -p "ruby.withPackages (ps: with ps; [ rails ])" \
  -p bundix \
  --run "rails new . && bundle lock && bundix --ruby=ruby"

> nix-shell

> rails webpacker:install

