return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},  -- Options can be added here if necessary
    config = function()
      local ibl = require("ibl")
      ibl.setup()  -- Setup with any necessary configurations
    end,
  }
  