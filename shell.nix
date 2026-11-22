{ pkgs ? import <nixpkgs> { }, }:
pkgs.callPackage (
  { mkShell
  , gcc
  , gnumake
  , sqlite
  }:
  mkShell {
    nativeBuildInputs = [
      gcc
      gnumake
    ];
    buildInputs = [
      sqlite
    ];
  }
) { }
