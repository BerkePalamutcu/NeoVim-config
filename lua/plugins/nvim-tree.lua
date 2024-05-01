return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
         vim.api.nvim_set_keymap('n', '<leader>eo', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
         vim.api.nvim_set_keymap('n', '<leader>ec', ':NvimTreeClose<CR>', { noremap = true, silent = true })
    end,
  }
