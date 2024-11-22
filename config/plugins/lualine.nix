{ lib, inputs, pkgs, config, ...}:
{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        component_separators = "";
        section_separators = {
          left = "";
          right = "";
        };
      };
      sections = {
        lualine_a = [
          {
            __unkeyed = "mode";
            separator.left = "";
            padding.right = 1;
          }
        ];        
        lualine_b = [
          # "filename"
          "branch"
        ];
        lualine_c = [ "" ];
        lualine_x = [ "" ];
        lualine_y = [ 
          "filetype"
          # "progress"
        ];
        lualine_z = [
          {
            __unkeyed = "location";
            separator.right = "";
            padding.left = 1;
          }
        ];
      };
    };
  };
}
