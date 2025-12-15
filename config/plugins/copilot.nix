{
  vim = {
    assistant.copilot = {
      enable = true;
      setupOpts = {
        suggestion.enbled = true;
        panel.enabled = true;
      };
      mappings = {
        suggestion = {
          accept = "<C-J>";
          next = "<C-o>";
          prev = "<C-x>";
        };
        panel = {
          open = "<leader>cp";
          refresh = "<C-r>";
        };
      };
    };
    keymaps = [
      {
        key = "<C-s>";
        mode = ["n" "i" "v"];
        action = ":Copilot suggestion<CR>";
        desc = "Trigger Copilot suggestion";
      }
    ];
  };
}
