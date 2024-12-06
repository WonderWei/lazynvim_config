return {
  {
    "octaltree/cmp-look",
    -- enabled = false,
    ft = { "tex" },
  },
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        {
          name = "look",
          keyword_length = 2,
          option = {
            convert_case = true,
            loud = true,
            --dict = '/usr/share/dict/words'
          },
        },
      }))
    end,
  },
}
