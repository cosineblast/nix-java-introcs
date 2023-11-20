{ pkgs ? import <nixpkgs> {}, ... }:

pkgs.stdenv.mkDerivation rec {
  pname = "java-princeton";
  version = "1.0.0";

  src = pkgs.fetchzip {
    url = "https://lift.cs.princeton.edu/java/linux/lift-cli.zip";
    hash = "sha256-MzED5ZOqpySK/BYV7Wj4Kn0ybJ4KbSsFSj5G9uMIv04=";

    # this zip file has two folders, and nix doesn't like that, so we use the stripRoot function
    # i unfortunately don't know where in the documentation i got this from :/
    stripRoot = false;
  };


  nativeBuildInputs = [pkgs.unzip];

  buildInputs = [pkgs.jdk11];

  installPhase = ''
  runHook preInstall

  mkdir -p $out/bin
  mkdir -p $out/lift

  cp $src/bin/* $out/bin
  cp -r $src/lift/* $out/lift

  sed -i -e "s#/usr/local#$out#g" $out/bin/*

  runHook postInstall
'';
}
