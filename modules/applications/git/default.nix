{ pkgs, ... }: {
  home-manager.users.adrielus = {
    home.packages = with pkgs;
      with gitAndTools; [
        # Render a git repo
        gource
        # Store secrets in github repos
        git-secret
        git-crypt
        # Both of these are github clis
        gh
        hub
      ];
    programs.git = {
      enable = true;

      userName = "Matei Adriel";
      userEmail = "rafaeladriel11@gmail.com";
      extraConfig.core.editor = "nvim";

      aliases = import ./aliases.nix;

      extraConfig = {
        github.user = "Mateiadrielrafael";
        hub.protocol = "ssh";

        rebase.autoStash = true;
      };
    };
  };
}
