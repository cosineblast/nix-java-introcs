{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  buildInputs = [ (callPackage ./introcs.nix {}) ];
  shellHook = "zsh";
}
