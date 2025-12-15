{
  vim = {
    vimAlias = true;
    viAlias = true;
    withNodeJs = true;
    lineNumberMode = "relNumber";
    enableLuaLoader = true;
    preventJunkFiles = true;
    options = {
      tabstop = 4;
      shiftwidth = 2;
      wrap = false;
      updatetime = 100;
      scrolloff = 10;
      undofile = true;
      incsearch = true;
      ignorecase = true;
      smartcase = true;
      cursorline = true;
    };
    globals.maplocalleader = "\\";
    clipboard = {
      enable = true;
      registers = "unnamed";
    };
    spellcheck = {
      enable = true;
      languages = ["en"];
      programmingWordlist.enable = false;
    };
  };
}
