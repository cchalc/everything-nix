{ config, pkgs, ... }:
let workflowDir = "${config.home.homeDirectory}/productivity/smos";
in
{
  sops.secrets.smos_password.sopsFile = ../secrets.yaml;

  # {{{ Smos config 
  programs.smos = {
    inherit workflowDir;

    enable = true;
    notify.enable = true;

    sync = {
      enable = true;
      server-url = "api.smos.moonythm.dev";
      username = "prescientmoon";
      password-file = config.sops.secrets.smos_password.path;
    };

    github = {
      enable = true;
      oauth-token-file = config.sops.secrets.smos_github_token.path;
    };

    calendar = {
      enable = true;
    };
  };
  # }}}
  # {{{ Storage & secrets 
  satellite.persistence.at.data.apps.smos.directories = [
    config.programs.smos.workflowDir
  ];

  sops.secrets.smos_github_token = {
    sopsFile = ../secrets.yaml;
    path = "${config.xdg.dataHome}/smos/.github_token";
  };
  # }}}
  # {{{ Add desktop entry
  # Start smos with a custom class so our WM can move it to the correct workspace
  xdg.desktopEntries.smostui = {
    name = "Smos TUI";
    type = "Application";
    terminal = false;
    icon = ../../../../../common/icons/smos.svg;
    exec = builtins.toString (pkgs.writeShellScript "smostui" ''
      wezterm start --class "org.wezfurlong.wezterm.smos" --cwd ${workflowDir} smos
    '');
  };
  # }}}
}
