# Software to install

{ config, pkgs, ... }:

{
  imports = [];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    neovim
    git
    gnupg
    pinentry
    bottles
    wine
    lutris
    discord
    anki-bin
    rustup
    gcc
    gnumake
    tmux
    gimp
  ];

  # See https://github.com/NixOS/nixpkgs/commit/3d832dee59ed0338db4afb83b4c481a062163771
  programs.gnupg.agent.enable = true;
  programs.steam.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}
