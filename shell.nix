with import <nixpkgs> {};
let
    gems = bundlerEnv {
        name = "balance-tracker";
        inherit ruby;
        gemdir = ./.;
    };
in mkShell {
  packages = [
    gems
    gems.wrappedRuby
    sqlite
    nodejs
    yarn
    bundler
    bundix
  ];
}
