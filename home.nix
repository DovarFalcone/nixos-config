{ config, pkgs, ... }:

{
  home.username = "dennis";
  home.homeDirectory = "/home/dennis";
  home.stateVersion = "24.11";

  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos btw";
      nrs = "sudo nixos-rebuild switch";
      nnc = "sudo nano /etc/nixos/configuration.nix";
      nhc = "sudo nano /etc/nixos/home.nix";
      wfi = "nm-applet &";
    };

  initExtra = ''
    export PS1='\[\e[38;5;246;3m\]\t\[\e[0m\] \[\e[38;5;46m\]\u\[\e[0m\] \[\e[38;5;244m\]in\[\e[0m\] \[\e[38;5;39m\]\w\[\e[0m\] \\$ '
  '';
  };

  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.9;
      font.normal = {
        family = "JetBrains Mono";
        style = "Regular";
      };
      font.size = 16;
    };
  };

  home.file.".config/bat/config".text = ''
    --theme="Nord"
    --style="numbers,changes,grid"
    --paging=auto
  '';

  home.file.".config/qtile".source = /home/dennis/home-manager-dotfiles/qtile;
  #home.file.".config/qtile".source = ./qtile;

  home.packages = with pkgs; [
    bat
  ];
}
