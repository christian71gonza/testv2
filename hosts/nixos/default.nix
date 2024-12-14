{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./system
    ./user
  ];
}
