{ lib, inputs, pkgs, config, ...}:
{
plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      nixd = {
        enable = true;
        settings.formatting.command = [ "nixfmt-rfc-style" ];
      };
      pyright.enable = true;
    };
    keymaps.lspBuf = {
      gD = "declaration";  
      gd = "definition";
      gi = "implementation";
      gr = "references";
    };
  };
  # plugins.conform-nvim = {
  #   enable = true;
  #   settings = {
  #     formatters_by_ft = {
  #       nix = [ "nil_ls" ];
  #     };
  #   };
  # };
}
