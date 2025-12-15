{pkgs, ...}: {
  vim.treesitter = {
    enable = true;
    fold = true;
    grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      r
      python
      nix
      php
      lua
      typst
      sql
      html
      c
      cpp
      bibtex
      bash
      cmake
      comment
      json
      java
      javascript
      llvm
      markdown
      markdown-inline
      scss
      yaml
      zsh
    ];
  };
}
