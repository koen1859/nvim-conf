{pkgs, ...}: {
  vim = {
    startPlugins = with pkgs.vimPlugins; [
      vimtex
      undotree
      harpoon2
      vim-dadbod
      vim-dadbod-ui
      vim-dadbod-completion
    ];
    extraPlugins = {
      tiny-inline-diagnostic = {
        package = pkgs.vimPlugins.tiny-inline-diagnostic-nvim;
        setup = ''
          require('tiny-inline-diagnostic').setup {
            preset = "modern",
            transparent_bg = false,
            options = {
              show_source = {
                enabled = true,
                if_many = false,
              },
              multilines = {
                enabled = true,
                always_show = false,
              },
            },
          }
        '';
      };
      compiler = {
        package = pkgs.vimPlugins.compiler-nvim;
        setup = "require('compiler').setup {}";
      };
      csvview = {
        package = pkgs.vimPlugins.csvview-nvim;
        setup = "require('csvview').setup {}";
      };
      neoscroll = {
        package = pkgs.vimPlugins.neoscroll-nvim;
        setup = "require('neoscroll').setup {}";
      };
      toggleterm = {
        package = pkgs.vimPlugins.toggleterm-nvim;
        setup = "require('toggleterm').setup {}";
      };
    };
    luaConfigRC.toggleterm = ''
      local Terminal = require("toggleterm.terminal").Terminal
      local python_term = Terminal:new({
          cmd = "ipython --no-autoindent",
      })

      local r_term = Terminal:new({
          cmd = "R",
      })

      function _PYTHON_TOGGLE()
          python_term:toggle()
      end

      function _R_TOGGLE()
          r_term:toggle()
      end

      function _SEND_VISUAL_LINES()
          -- visual markers only update after leaving visual mode
          local esc = vim.api.nvim_replace_termcodes("<esc>", true, false, true)
          vim.api.nvim_feedkeys(esc, "x", false)

          -- get selected text
          local start_line, start_col = unpack(vim.api.nvim_buf_get_mark(0, "<"))
          local end_line, end_col = unpack(vim.api.nvim_buf_get_mark(0, ">"))
          local lines = vim.fn.getline(start_line, end_line)

          -- send selection with trimmed indent
          local cmd = ""
          local indent = nil
          for _, line in ipairs(lines) do
              if indent == nil and line:find("[^%s]") ~= nil then
                  indent = line:find("[^%s]")
              end
              -- (i)python interpreter evaluates sent code on empty lines -> remove
              if not line:match("^%s*$") then
                  cmd = cmd .. line:sub(indent or 1) .. string.char(13) -- trim indent
              end
          end
          require("toggleterm").exec(cmd, 1)
      end
    '';
  };
}
