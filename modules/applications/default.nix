{ ... }: {
  imports = [
    ./git
    ./shells
    # ./wakatime
    ./xmonad
    ./rofi
    # ./xmodmap

    # ./wine.nix
    ./kdeconnect.nix
    ./steam.nix
    ./docker.nix
    ./misc.nix
    ./locale.nix
    # ./memes.nix
    ./alacritty.nix
    ./postgres.nix
    ./neovim.nix
    ./tmux.nix
    ./kmonad.nix
    ./direnv.nix
  ];
}

