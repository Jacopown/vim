{
  lib,
  inputs,
  pkgs,
  config,
  ...
}: {
  globals = {
    mapleader = " ";
  };
  keymaps = [
    {
      key = "<Space>";
      action = "<Nop>";
      options = {
        silent = true;
        desc = "Remap leader key to space";
      };
    }
    {
      mode = "i";
      key = "kj";
      action = "<ESC>";
      options = {
        silent = true;
        desc = "Fast esc solution";
      };
    }
    {
      mode = "i";
      key = "jk";
      action = "<ESC>";
      options = {
        silent = true;
        desc = "Fast esc solution";
      };
    }
    {
      mode = "x";
      key = "J";
      action = ":move'>+1<CR>gv-gv";
      options = {
        silent = true;
        desc = "Move selected line up";
      };
    }
    {
      mode = "x";
      key = "K";
      action = ":move'<-2<CR>gv-gv";
      options = {
        silent = true;
        desc = "Move selected line down";
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options = {
        silent = true;
        desc = "Move window focus to the right";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options = {
        silent = true;
        desc = "Move window focus to the left";
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options = {
        silent = true;
        desc = "Move window focus up";
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options = {
        silent = true;
        desc = "Move window focus down";
      };
    }
    {
      mode = "v";
      key = "<";
      action = "<gv";
      options = {
        silent = true;
        desc = "Keep selection when changing indentation to selection";
      };
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
      options = {
        silent = true;
        desc = "Keep selection when changing indentation to selection";
      };
    }
    {
      mode = "v";
      key = "p";
      action = ''"_dP'';
      options = {
        silent = true;
        desc = "Paste to substitute a selection without rewriting the copied text with the substututed one";
      };
    }
  ];
}
