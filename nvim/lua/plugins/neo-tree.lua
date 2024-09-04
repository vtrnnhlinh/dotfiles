return {
      "nvim-neo-tree/neo-tree.nvim",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      },
      config = function()
        require("neo-tree").setup {
          filesystem = {
            hijack_netrw_behavior = "open_current", -- or "disabled"
            follow_current_file = {
              enabled = true, -- Enable following the current file
            },
          },
          window = {
            position = "right", -- Set Neo-tree to open on the right side
            width = 40, -- Set the width of Neo-tree
          },
        }
      end,
}
