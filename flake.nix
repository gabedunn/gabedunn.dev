{
  description = "gabedunn.dev";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    devenv.url = "github:cachix/devenv";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-schemas.url =
      "https://flakehub.com/f/DeterminateSystems/flake-schemas/*.tar.gz";
  };

  nixConfig = {
    extra-trusted-public-keys =
      "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw=";
    extra-substituters = "https://devenv.cachix.org";
  };

  outputs = inputs@{ nixpkgs, flake-parts, devenv, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      # systems to enable support for
      systems =
        [ "x86_64-linux" "aarch64-darwin" "x86_64-darwin" "aarch64-linux" ];

      imports = [ inputs.devenv.flakeModule ];

      flake.schemas = inputs.flake-schemas.schemas;

      perSystem = { config, self', inputs', pkgs, system, ... }: {
        devenv.shells.default = {
          name = "gabedunn.dev";

          packages = with pkgs; [
            git
            nixpkgs-fmt

            netlify-cli
          ];

          # languages to enable
          languages = {
            javascript = {
              enable = true;
              package = pkgs.nodejs_22;
              corepack.enable = true;

              pnpm = {
                enable = true;
                install.enable = true;
              };
            };
          };

          # dotenv.enable = true;

          # scripts that will be available in the shell
          scripts.build.exec = "pnpm run build";
          scripts.dev.exec = "pnpm run dev";
          scripts.run.exec = "pnpm run start";

          # processes to run with `devenv up`
          processes.web.exec = "pnpm run start";
        };
      };
    };
}

