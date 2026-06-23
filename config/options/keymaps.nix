{
  vim = {
    keymaps = [
      {
        key = "<leader>rt";
        mode = "n";
        action = ":!cargo test %:t:r -- --nocapture<CR>";
        desc = "Run tests on current file";
      }
      {
        key = "<leader>rd";
        mode = "n";
        action = ":!cargo run<CR>";
        desc = "Run project on debug mode";
      }
      {
        key = "<leader>rr";
        mode = "n";
        action = ":!cargo run --release<CR>";
        desc = "Run project on release mode";
      }
      {
        key = "<leader>w";
        mode = "n";
        action = ":set invwrap<CR>";
        desc = "Toggle wrapping of text";
      }
      {
        key = "j";
        mode = "n";
        action = "v:count == 0 ? 'gj' : 'j'";
        expr = true;
        desc = "Down (wrap-aware)";
      }
      {
        key = "k";
        mode = "n";
        action = "v:count == 0 ? 'gk' : 'k'";
        expr = true;
        desc = "Up (wrap-aware)";
      }
      {
        key = "<Up>";
        mode = ["n"];
        action = ":resize -2<CR>";
        desc = "Resize up";
      }
      {
        key = "<Down>";
        mode = ["n"];
        action = ":resize +2<CR>";
        desc = "Resize down";
      }
      {
        key = "<Left>";
        mode = ["n"];
        action = ":vertical resize -2<CR>";
        desc = "Resize left";
      }
      {
        key = "<Right>";
        mode = ["n"];
        action = ":vertical resize +2<CR>";
        desc = "Resize right";
      }
      {
        key = "<leader>y";
        mode = ["n" "v"];
        action = "\"+y";
        desc = "Copy to system clipboard";
      }
      {
        key = "<C-k>";
        mode = ["n" "t"];
        action = "<cmd>wincmd k<cr>";
        desc = "Navigate Up";
      }
      {
        key = "<C-j>";
        mode = ["n" "t"];
        action = "<cmd>wincmd j<cr>";
        desc = "Navigate Down";
      }
      {
        key = "<C-h>";
        mode = ["n" "t"];
        action = "<cmd>wincmd h<cr>";
        desc = "Navigate Left";
      }
      {
        key = "<C-l>";
        mode = ["n" "t"];
        action = "<cmd>wincmd l<cr>";
        desc = "Navigate Right";
      }
      {
        key = "<leader>nh";
        mode = ["n"];
        action = ":nohl<CR>";
        desc = "Clear Search Higlights";
      }
      {
        key = "<C-w>";
        mode = ["n"];
        action = ":bdelete<CR>";
        desc = "Close Current Buffer";
      }
      {
        key = "<Tab>";
        mode = ["n"];
        action = ":bnext<CR>";
        desc = "Next Buffer";
      }
      {
        key = "<S-Tab>";
        mode = ["n"];
        action = ":bprevious<CR>";
        desc = "Previous Buffer";
      }
      {
        key = "J";
        mode = ["v"];
        action = ":m '>+1<CR>gv=gv";
        desc = "Move Visual Selection";
      }
      {
        key = "J";
        action = "mzJ`z";
        mode = ["n"];
        desc = "Append line below to current line";
      }
      {
        key = "n";
        mode = ["n"];
        action = "nzzzv";
        desc = "Next Match";
      }
      {
        key = "N";
        mode = ["n"];
        action = "Nzzzv";
        desc = "Previous Match";
      }
      {
        key = "<";
        mode = ["v"];
        action = "<gv";
        desc = "Indent Back Visual Selection";
      }
      {
        key = ">";
        mode = ["v"];
        action = ">gv";
        desc = "Indent Forward Visual Selection";
      }
      {
        key = "<leader>u";
        mode = ["n"];
        action = ":UndotreeToggle<cr>";
        desc = "Toggle Undo Tree";
      }
      {
        mode = "n";
        key = "<leader>a";
        action = "<cmd> lua require'harpoon':list():add()<CR>";
        desc = "Add Buffer to Harpoon";
      }
      {
        mode = "n";
        key = "<C-e>";
        action = "<cmd>lua require'harpoon'.ui:toggle_quick_menu(require'harpoon':list())<CR>";
        desc = "Toggle Harpoon Menu";
      }
      {
        mode = "n";
        key = "<C-1>";
        action = "<cmd>lua require'harpoon':list():select(1)<CR>";
        desc = "Open First Harpoon Buffer";
      }
      {
        mode = "n";
        key = "<C-2>";
        action = "<cmd>lua require'harpoon':list():select(2)<CR>";
        desc = "Open Second Harpoon Buffer";
      }
      {
        mode = "n";
        key = "<C-3>";
        action = "<cmd>lua require'harpoon':list():select(3)<CR>";
        desc = "Open Third Harpoon Buffer";
      }
      {
        mode = "n";
        key = "<C-4>";
        action = "<cmd>lua require'harpoon':list():select(4)<CR>";
        desc = "Open Fourth Harpoon Buffer";
      }
      {
        mode = "n";
        key = "<leader><Tab>";
        action = "<cmd>lua require'harpoon':list():next()<CR>";
        desc = "Next Harpoon Buffer";
      }
      {
        mode = "n";
        key = "<leader><S-Tab>";
        action = "<cmd>lua require'harpoon':list():prev()<CR>";
        desc = "Previous Harpoon Buffer";
      }
      {
        key = "gd";
        mode = ["n"];
        action = "<cmd>Trouble lsp_definitions<CR>";
        desc = "Go To Definition";
      }
      {
        key = "gr";
        mode = ["n"];
        action = "<cmd>Trouble lsp_references<CR>";
        desc = "LSP References";
      }
      {
        key = "gi";
        mode = ["n"];
        action = "<cmd>Trouble lsp_incoming_calls<CR>";
        desc = "LSP Incoming Calls";
      }
      {
        key = "<leader><BS>";
        mode = ["n"];
        action = "<cmd>CompilerToggleResults<cr>";
        desc = "Compiler Toggle Results";
      }
      {
        key = "<leader>ro";
        mode = ["n"];
        action = "<cmd>CompilerOpen<cr>";
        desc = "Compiler Open";
      }
      {
        key = "<leader>tp";
        mode = ["n"];
        action = "<cmd>lua _PYTHON_TOGGLE()<cr>";
        desc = "Open Python terminal";
      }
      {
        key = "<leader>tr";
        mode = ["n"];
        action = "<cmd>lua _R_TOGGLE()<cr>";
        desc = "Open R terminal";
      }
      {
        key = "<cr>";
        mode = ["v"];
        action = "<cmd>lua _SEND_VISUAL_LINES()<cr>";
        desc = "Send visual selection to terminal";
      }
      {
        key = "<leader>fdb";
        mode = ["n"];
        action = "<cmd>DBUIToggle<cr>";
        desc = "Toggle DB UI";
      }
      {
        key = "<leader>z";
        mode = ["n"];
        action = "<cmd>ZenMode<cr>";
        desc = "Toggle Zen mode";
      }
      {
        key = "<leader>sv";
        mode = ["n"];
        action = "<C-w>v";
        desc = "Split window vertically";
      }
      {
        key = "<leader>sh";
        mode = ["n"];
        action = "<C-w>h";
        desc = "Split window horizontally";
      }
      {
        key = "<leader>se";
        mode = ["n"];
        action = "<C-w>=";
        desc = "Make splits equal size";
      }
      {
        key = "<leader>sx";
        mode = ["n"];
        action = "<cmd>close<cr>";
        desc = "Close current split";
      }
      {
        key = "<leader>cs";
        mode = ["n"];
        action = "<cmd>CsvViewToggle<cr>";
        desc = "Toggle CSV view";
      }
      {
        key = "<leader>cc";
        mode = ["n"];
        action = "<cmd>CopilotChatToggle<cr>";
        desc = "Toggle Copilot Chat";
      }
    ];
  };
}
