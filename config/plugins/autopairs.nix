{ lib, inputs, pkgs, config, ...}:

{
plugins.nvim-autopairs = {
    enable = true;
    settings = {
      check_ts = true;
      fast_wrap.map = "<C-e>";
    };
  };
}
