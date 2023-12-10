{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [ (callPackage ./default.nix {}) ];
  shellHook = "zsh";
}
