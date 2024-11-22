{ lib, inputs, pkgs, config, ...}:
#TODO add colors and icons
{
  plugins.luasnip.enable = true; #Snippet engine
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = { 
      sources = [
        { name = "path"; }
        { name = "luasnip"; } #Adapter for luasnip snippet engine to cmp
        { name = "buffer"; }
      ];
      view.entries = {
        name = "custom";
        selection_order = "near_cursor";
        };
      window.completion.border = "rounded";
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
