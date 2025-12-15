{lib, ...}: {
  vim = {
    augroups = [
      {
        name = "highlight_yank";
        clear = true;
      }
      {
        name = "no_auto_comment";
        clear = true;
      }
      {
        name = "dotenv_ft";
        clear = true;
      }
      {
        name = "active_cursorline";
        clear = true;
      }
    ];
    autocmds = [
      {
        event = ["BufWritePost"];
        pattern = ["*.Rmd" "*.rmd"];
        callback = lib.generators.mkLuaInline ''
          function()
            vim.treesitter.stop()
            vim.treesitter.start()
          end
        '';
      }
      {
        event = ["FileType"];
        pattern = ["help"];
        command = "wincmd L";
        desc = "Vertical split for help pages";
      }
      {
        event = ["VimResized"];
        command = "wincmd =";
        desc = "Auto resize splits when terminal resizes";
      }
      {
        event = ["TextYankPost"];
        group = "highlight_yank";
        pattern = ["*"];
        desc = "Highlight selection on yank";
        callback = lib.generators.mkLuaInline ''
          function()
            vim.highlight.on_yank({timeout = 200, visual = true})
          end
        '';
      }
      {
        event = ["BufReadPost"];
        callback = lib.generators.mkLuaInline ''
          function(args)
            local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
            local line_count = vim.api.nvim_buf_line_count(args.buf)
            if mark[1] > 0 and mark[1] <= line_count then
              vim.api.nvim_win_set_cursor(0, mark)
              vim.schedule(function()
                vim.cmd("normal! zz")
              end)
            end
          end
        '';
        desc = "Cursor on place last edited when entering a file";
      }
      {
        event = ["FileType"];
        group = "no_auto_comment";
        callback = lib.mkLuaInline ''
          function()
            vim.opt_local.formatoptions:remove({"c", "r", "o"})
          end
        '';
        desc = "Do not automatically make line below a comment a comment as well";
      }
      {
        event = ["BufRead"];
        group = "dotenv_ft";
        pattern = [".env" ".env*"];
        callback = lib.mkLuaInline ''
          function()
            vim.bo.filetype = "dosini"
          end
        '';
        desc = "Syntax highlighting in .env files";
      }
      {
        event = ["WinEnter" "BufEnter"];
        group = "active_cursorline";
        callback = lib.mkLuaInline ''
          function()
            vim.opt_local.cursorline = true
          end
        '';
      }
      {
        event = ["WinLeave" "BufLeave"];
        group = "active_cursorline";
        callback = lib.mkLuaInline ''
          function()
            vim.opt_local.cursorline = false
          end
        '';
      }
    ];
  };
}
