{ config, pkgs, ... }:
let
  themeMap = pkgs.callPackage (import ./themes.nix) { };

  discocss = pkgs.discocss.overrideAttrs (old: rec {
    version = "0.3.0";
    src = pkgs.fetchFromGitHub {
      owner = "bddvlpr";
      repo = "discocss";
      rev = "v${version}";
      hash = "sha256-2K7SPTvORzgZ1ZiCtS5TOShuAnmtI5NYkdQPRXIBP/I=";
    };
  });
in
{
  programs.discord = {
    enable = true;
    enableOpenASAR = false;
    disableUpdateCheck = true;
    enableDevtools = true;
  };

  home.packages = [ discocss ];
  xdg.configFile."discocss/custom.css".source = config.satellite.theming.get themeMap;

  satellite.persistence.at.state.apps.Discord.directories = [
    "${config.xdg.configHome}/discord" # Why tf does discord store it's state here 💀
  ];
}
