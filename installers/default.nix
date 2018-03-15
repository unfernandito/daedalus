let
  localLib = import ../lib.nix;
in
{ system ? builtins.currentSystem
, config ? {}
, pkgs ? (import (localLib.fetchNixPkgs) { inherit system config; })
}:

with pkgs;
with haskell.lib;

let
  haskellPackages = haskell.packages.ghc802.override {
    overrides = self: super: {
    };
  };

in

  justStaticExecutables (haskellPackages.callPackage ./daedalus-installer.nix {})
