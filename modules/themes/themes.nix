{ pkgs, lib, ... }:
let githubVariant = import ./githubVariant.nix;
in
lib.lists.map (theme: pkgs.callPackage theme { }) [
  (githubVariant {
    variant = "light";
    # wallpaper = ./wallpapers/wall.png;
    wallpaper = ./wallpapers/synthwave.jpg;
    transparency = 0.8;
  })
  (githubVariant {
    variant = "dark";
    wallpaper = ./wallpapers/spaceship.jpg;
    transparency = 0.8;
  })
]
