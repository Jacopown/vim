{ lib, inputs, pkgs, config, ...}:

{
plugins.nvim-autopairs = {
    enable = true;
    settings = {
      check_ts = true;
    };
  };
}
