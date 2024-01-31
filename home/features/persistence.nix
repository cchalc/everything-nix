{ config, ... }: {
  # {{{ Set up my custom imperanence wrapper
  satellite.persistence = {
    enable = true;

    # Actual data/media (eg: projects, images, videos, etc)
    at.data.path = "/persist/data";
    at.data.prefixDirectories = false;

    # App state I want to keep
    at.state.path = "/persist/state";

    # App state which I should be able to delete on a whim
    at.cache.path = "/persist/local/cache";
  };
  # }}}
  # {{{ XDG dirs
  # The lack of "~/Desktop" and "~/Downloads" is intentional!
  satellite.persistence.at.data.apps.main.directories = [
    config.xdg.userDirs.documents
    config.xdg.userDirs.pictures
    config.xdg.userDirs.music
    config.xdg.userDirs.videos
    config.xdg.userDirs.extraConfig.XDG_PROJECTS_DIR
  ];
  # }}}
  # {{{ OpenTabletDriver
  satellite.persistence.at.state.apps.open-tablet-driver.directories = [
    "${config.xdg.configHome}/OpenTabletDriver"
  ];
  # }}}
  # {{{ Programming tooling
  # {{{ Elm
  satellite.persistence.at.cache.apps.elm.directories = [ ".elm" ];
  # }}}
  # {{{ Fly.io
  satellite.persistence.at.state.apps.fly-io.directories = [ ".fly" ];
  # }}}
  # {{{ Haskell
  satellite.persistence.at.cache.apps.haskell.directories = [
    ".ghc"
    ".stack"
    ".local/state/cabal"
    "${config.xdg.cacheHome}/stack"
    "${config.xdg.cacheHome}/ghcide"
    "${config.xdg.cacheHome}/cabal"
  ];
  # }}}
  # {{{ Nodejs
  satellite.persistence.at.cache.apps.nodejs = {
    files = [
      ".yarnrc" # auto-generated by yarn
      ".node_repl_history"
      ".ts_node_repl_history"
    ];

    directories = [
      # Node & npm
      "${config.xdg.cacheHome}/node-gyp"
      ".npm"

      # Yarn
      "${config.xdg.cacheHome}/yarn"

      # Pnpm
      "${config.xdg.cacheHome}/pnpm"
      "${config.xdg.dataHome}/pnpm"
      ".local/state/pnpm"
    ];
  };
  # }}}
  # {{{ Purescript
  satellite.persistence.at.cache.apps.purescript.directories = [
    "${config.xdg.dataHome}/purescript"
    "${config.xdg.cacheHome}/spago"
  ];
  # }}}
  # {{{ Python
  satellite.persistence.at.cache.apps.python = {
    files = [
      ".python_history"
    ];

    directories = [
      ".ipython"
      ".jupyter"
      "${config.xdg.dataHome}/jupyter"
      "${config.xdg.cacheHome}/pip"
    ];
  };
  # }}}
  # {{{ Rust
  satellite.persistence.at.cache.apps.rust.directories = [
    ".cargo"
    ".rustup"
  ];
  # }}}
  # }}}
  # {{{ Desktop apps
  # {{{ QBittorrent
  satellite.persistence.at.state.apps.qbittorrent.directories = [
    "${config.xdg.configHome}/qBittorrent" # Config options
  ];

  satellite.persistence.at.cache.apps.qbittorrent.directories = [
    # TODO: investigate which subdirectories/files I actually want to keep
    "${config.xdg.dataHome}/qBittorrent" # Torrent files, logs, etc
  ];
  # }}}
  # {{{ Signal
  satellite.persistence.at.state.apps.signal.directories = [
    "${config.xdg.configHome}/Signal" # Why tf does signal store it's state here 💀
  ];
  # }}}
  # {{{ Steam
  satellite.persistence.at.state.apps.steam = {
    directories = [
      ".factorio" # TODO: perhaps this should have it's own file?
      # A couple of games don't play well with bindfs
      {
        directory = "${config.xdg.dataHome}/Steam";
        method = "symlink";
      }
    ];
  };
  # }}}
  # {{{ Lutris
  # TODO: there might be more to cache in .cache/lutris
  satellite.persistence.at.state.apps.lutris.directories = [
    "${config.xdg.configHome}/lutris" # General config data
    "${config.xdg.cacheHome}/lutris/banners" # Game banners
    "${config.xdg.cacheHome}/lutris/coverart" # Game cover art

    # Aparently IO intensive stuff like games prefer symlinks?
    { directory = "media/games/lutris"; method = "symlink"; } # Lutris games
  ];
  # }}}
  # {{{ Wine
  satellite.persistence.at.state.apps.wine.directories = [ ".wine" ];
  # }}}
  # {{{ Element 
  satellite.persistence.at.state.apps.element.directories = [
    "${config.xdg.configHome}/Element"
  ];
  # }}}
  # }}}
  # {{{ Cli
  # {{{ Sops 
  satellite.persistence.at.state.apps.sops.directories = [ "${config.xdg.configHome}/sops/age" ];
  # }}}
  # }}}
}
