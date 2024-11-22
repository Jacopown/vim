{ lib, inputs, pkgs, config, ...}:
{
  plugins.nvim-ufo = {
    enable = false;
  };
  opts = {
    foldcolumn = "auto:1";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = false;
  };
}
