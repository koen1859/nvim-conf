{
  vim.dashboard.startify = {
    enable = true;
    customHeader = [
      "      ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
      "      ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║"
      "      ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║"
      "      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║"
      "      ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║"
      "      ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝"
    ];
    commands = [
      {ff = "Telescope fd";}
      {fg = "Telescope live_grep";}
      {fe = "Oil";}
      {g = "LazyGit";}
    ];
    lists = [
      {type = "commands";}
      {type = "dir";}
    ];
    skipList = [
      "flake.lock"
    ];
    changeToDir = false;
  };
}
