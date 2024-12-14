{
  config,
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    (import ./wrapped/alacritty/alacritty.nix {inherit pkgs;})
    #    alacritty
    neovim
    foot
    zsh-nix-shell
    wl-clipboard
    gcc
    ripgrep
    pfetch
  ];

 fonts.packages = with pkgs; [
  nerd-fonts.jetbrains-mono
 ];
}
