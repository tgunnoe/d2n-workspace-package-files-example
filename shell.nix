{ pkgs ? import <nixpkgs> { } }:
let
  nodejs = pkgs.nodejs-14_x;
  nodePackages = pkgs.nodePackages.override { inherit nodejs; };
  yarn = pkgs.yarn.override { inherit nodejs; };
in
pkgs.mkShell {
  buildInputs = [
    yarn
    nodejs
  ];

  shellHook = ''
    # ...
  '';
}
