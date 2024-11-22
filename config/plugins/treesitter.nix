{ lib, inputs, pkgs, config, ...}:
{
  plugins.treesitter = {
    enable = true;
    folding = true;
    settings = {
      auto_install = true;
      ensure_installed = [];
      sync_install = true;
      highlight.enable = true;
      indentation.enable = true;
    };
  };
}
