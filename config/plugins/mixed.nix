{ lib, inputs, pkgs, config, ...}:

{
  plugins = {
    web-devicons.enable = true;
    ccc.enable = true;
    comment.enable = true;
  };
}
