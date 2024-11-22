{ lib, inputs, pkgs, config, ...}:
{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
  };
}
