{ lib, inputs, pkgs, config, ...}:
{
  plugins = {
    lsp = {
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
    lsp-format.enable = true;
    none-ls = {
      enable = true;
      sources.formatting.alejandra.enable = true;
      sources.formatting.pyink.enable = true;
    };
  };
}
