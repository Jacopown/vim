{ lib, inputs, pkgs, config, ...}:

{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = { 
      sources = [
        { name = "path"; }
        { name = "luasnip"; }
        { name = "buffer"; }
      ];
      # window.completition.border = [];
      mapping = {
        "<CR>" = ''
          cmp.mapping({
            i = function(fallback)
              if cmp.visible() and cmp.get_active_entry() then
                cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
              else
                fallback()
              end
            end,
            s = cmp.mapping.confirm({ select = true }),
            c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
          })
          '';
        "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      };
    };
  };
}
