{
  globals.mapleader = " ";

  keymaps = [
    # General maps
    {
      mode = "n";
      key = "<leader>i";
      action = "<cmd>ene<cr>";
      options = {
        desc = "New file";
      };
    }
     
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree action=show source=filesystem position=right toggle=false<cr>";
      options = {
        desc = "Neo Tree open";
      };
    }
    {
      mode = "n";
      key = "<leader>o";
      action = "<cmd>Oil<cr>";
      options = {
        desc = "Oil";
      };
    }

    {
      mode = "n";
      key = "<leader>h";
      action = "<cmd>Neotree float git_status<cr>";
      options = {
        desc = "Neo tree git status";
      };
    }

    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>Neotree action=off source=filesystem position=right toggle=true<cr>";
      options = {
        desc = "Neo tree close";
      };
    }

    {
      mode = "n";
      key = "<leader>t";
      action = "<cmd>ToggleTerm direction=float<cr>";
      options = {
        desc = "Toggleterm";
      };
    }

    {
      mode = "n";
      key = "<leader>r";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        desc = "Format save";
      };
    }

    {
      mode = "n";
      key = "<leader>s";
      action = "<C-s>";
      options = {
        desc = "Save";
      };
    }

    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>Telescope find_files<cr>";
      options = {
        desc = "Find file";
      };
    }
    {
      mode = "n";
      key = "<leader>l";
      action = "<cmd>Telescope live_grep<cr>";
      options = {
        desc = "Live grep";
      };
    }

    {
      mode = "n";
      key = "<leader>q";
      action = "+quit/session";
      options = {
        desc = "+quit/session";
      };
    }
    {
      mode = "n";
      key = "<leader>u";
      action = "+ui";
      options = {
        desc = "+ui";
      };
    }

    {
      mode = "n";
      key = "<leader>w";
      action = "+windows";
      options = {
        desc = "+windows";
      };
    }

    {
      mode = "n";
      key = "<leader><Tab>";
      action = "+tab";
      options = {
        desc = "+tab";
      };
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>ca";
      action = "<cmd>lua vim.lsp.buf.code.action<cr>";
      options = {
      silent = true;
        desc = "+code action";
      };
    }

    # Tabs
    {
      mode = "n";
      key = "<leader><tab><tab>";
      action = "<cmd>tabnew<cr>";
      options = {
        silent = true;
        desc = "New Tab";
      };
    }

    {
      mode = "n";
      key = "<leader><tab>d";
      action = "<cmd>tabclose<cr>";
      options = {
        silent = true;
        desc = "Close tab";
      };
    }

    # Windows
    {
      mode = "n";
      key = "<leader>ww";
      action = "<C-W>p";
      options = {
        silent = true;
        desc = "Other window";
      };
    }

    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options = {
        silent = true;
        desc = "Delete window";
      };
    }

    {
      mode = "n";
      key = "<leader>w-";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split window below";
      };
    }

    {
      mode = "n";
      key = "<leader>w|";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }

    {
      mode = "n";
      key = "<C-h>";
      action = "<C-W>h";
      options = {
        silent = true;
        desc = "Move to window left";
      };
    }

    {
      mode = "n";
      key = "<C-l>";
      action = "<C-W>l";
      options = {
        silent = true;
        desc = "Move to window right";
      };
    }

    {
      mode = "n";
      key = "<C-k>";
      action = "<C-W>k";
      options = {
        silent = true;
        desc = "Move to window over";
      };
    }

    {
      mode = "n";
      key = "<C-j>";
      action = "<C-W>j";
      options = {
        silent = true;
        desc = "Move to window bellow";
      };
    }

    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }

    # Quit/Session
    {
      mode = "n";
      key = "<leader>qq";
      action = "<cmd>quitall<cr><esc>";
      options = {
        silent = true;
        desc = "Quit all";
      };
    }

    {
      mode = "n";
      key = "<leader>ul";
      action = ":lua ToggleLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Numbers";
      };
    }

    {
      mode = "n";
      key = "<leader>uL";
      action = ":lua ToggleRelativeLineNumber()<cr>";
      options = {
        silent = true;
        desc = "Toggle Relative Line Numbers";
      };
    }

    {
      mode = "n";
      key = "<leader>uw";
      action = ":lua ToggleWrap()<cr>";
      options = {
        silent = true;
        desc = "Toggle Line Wrap";
      };
    }

    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {
        desc = "Use move command when line is highlighted ";
      };
    }

    {
      mode = "v";
      key = "K";
      action = ":m '>-2<CR>gv=gv";
      options = {
        desc = "Use move command when line is highlighted ";
      };
    }

    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options = {
        desc = "Allow cursor to stay in the same place after appending to current line ";
      };
    }

    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }

    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        desc = "Allow C-d and C-u to keep the cursor in the middle";
      };
    }

    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options = {
        desc = "Allow search terms to stay in the middle ";
      };
    }

    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options = {
        desc = "Allow search terms to stay in the middle ";
      };
    }

    # Paste stuff without saving the deleted word into the buffer
    {
      mode = "x";
      key = "<leader>p";
      action = ''"_dP'';
      options = {
        desc = "Deletes to void register and paste over";
      };
    }

    # Delete to void register
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>D";
      action = ''"_d'';
      options = {
        desc = "Delete to void register";
      };
    }

    # <C-c> instead of pressing esc just because
    {
      mode = "i";
      key = "<C-c>";
      action = "<Esc>";
    }

    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal<cr>";
      options = {
        desc = "Next buffer";
      };
    }
    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>bprev<cr>";
      options = {
        desc = "Previous buffer";
      };
    }

  ];
  extraConfigLua = ''
    function ToggleLineNumber()
    if vim.wo.number then
      vim.wo.number = false
    else
      vim.wo.number = true
        vim.wo.relativenumber = false
        end
        end

        function ToggleRelativeLineNumber()
        if vim.wo.relativenumber then
          vim.wo.relativenumber = false
        else
          vim.wo.relativenumber = true
            vim.wo.number = false
            end
            end

            function ToggleWrap()
            vim.wo.wrap = not vim.wo.wrap
            end
  '';
}
