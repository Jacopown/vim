{ lib, inputs, pkgs, config, ...}:
{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      nil_ls.enable = true;
    };
  };
}
