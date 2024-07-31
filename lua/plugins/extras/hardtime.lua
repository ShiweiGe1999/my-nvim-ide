--[[
  Recommended workflow:

  - Avoid using the mouse and arrow keys if they are not at the home row of your keyboard.
  - Use relative jump (e.g., 5j 12-) for vertical movement within the screen.
  - Use CTRL-U CTRL-D CTRL-B CTRL-F gg G for vertical movement outside the screen.
  - Use word-motion (w W b B e E ge gE) for short-distance horizontal movement.
  - Use f F t T , ; 0 ^ $ for medium to long-distance horizontal movement.
  - Use operator + motion/text-object (e.g., ci{ y5j dap) whenever possible.
  - Use % and square bracket commands (see :h [) to jump between brackets.
  ]]
return {
  -- This is enable by default
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    opts = {
      disabled_filetypes = { "qf", "mason", "lazy" },
      -- default values is disabled the arrow keys
      disabled_keys = { ["<Left>"] = {}, ["<Right>"] = {} },
      -- Allow j k but restrict gj gk
      restricted_keys = {
        ["j"] = {},
        ["k"] = {},
      },
    },
    keys = {
      { "<leader>th", ":Hardtime toggle", desc = "Toggle hardtime" },
    },
  },
}
