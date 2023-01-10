# This setups a SSH server. 
{ outputs, config, lib, ... }:
let
  # Record containing all the hosts
  hosts = outputs.nixosConfigurations;

  # Name of the current hostname
  hostname = config.networking.hostName;

  # Function from hostname to relative path to public ssh key
  pubKey = host: ../../${host}/ssh_host_ed25519_key.pub;
in
{
  services.openssh = {
    enable = true;

    # Forbid root login through SSH.
    permitRootLogin = "no";

    # Use keys only. Remove if you want to SSH using password (not recommended)
    passwordAuthentication = false;

    # Automatically remove stale sockets
    extraConfig = ''
      StreamLocalBindUnlink yes
    '';

    # TODO: look into what this does
    # Allow forwarding ports to everywhere
    gatewayPorts = "clientspecified";

    # Generate ssh key
    hostKeys = [{
      path = "/persist/etc/ssh/ssh_host_ed25519_key";
      type = "ed25519";
    }];
  };

  # Passwordless sudo when SSH'ing with keys
  security.pam.enableSSHAgentAuth = true;

  # Add each host in this repo to the knownHosts list
  programs.ssh = {
    knownHosts = builtins.mapAttrs
      (name: _: {
        publicKeyFile = pubKey name;
        extraHostNames = lib.optional (name == hostname) "localhost";
      })
      hosts;
  };
}
