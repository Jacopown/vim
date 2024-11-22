{ lib, inputs, pkgs, config, ...}:
{
  plugins.lualine = {
    enable = true;
    settings = {
      sections = {
        lualine_a = [
          "mode"
        ];
        lualine_b = [
          "filename"
          "branch"
        ];
        lualine_c = [];
        lualine_x = [];
        lualine_y = [ 
          "filetype"
          "progress"
        ];
        lualine_z = [
          "location"
        ];
      };
    };
  };
}
