{
  vim = {
    utility = {
      oil-nvim.enable = true;
    };
    keymaps = [
      {
        mode = "n";
        key = "-";
        action = "<cmd>:Oil<CR>";
        desc = "Oil";
      }
    ];
  };
}
