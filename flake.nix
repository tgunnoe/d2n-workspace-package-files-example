{
  inputs.dream2nix.url = "path:/home/tgunnoe/src/dream2nix";
  outputs = { self, dream2nix }:
    dream2nix.lib.makeFlakeOutputs {
      systems = ["x86_64-linux"];
      config.projectRoot = ./.;
      source = ./.;
    };
}
