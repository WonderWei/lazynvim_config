return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>1", "<Cmd>BufferLineGoToBuffer 1 <CR>>" },
      { "<leader>2", "<Cmd>BufferLineGoToBuffer 2 <CR>>" },
      { "<leader>3", "<Cmd>BufferLineGoToBuffer 3 <CR>>" },
    },
    opts = {
      options = {
        numbers = "ordinal",
        -- stylua: ignore
      },
    },
  },
}
