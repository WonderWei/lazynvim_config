return {
  {
    "nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    -- -@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      -- 关键：禁用“默认预选第一项”
      opts.preselect = cmp.PreselectMode.None
      opts.completion = opts.completion or {}
      opts.completion.completeopt = "menu,menuone,noselect"

      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "copilot", group_index = 2 } }))
    end,
  },
  {
    "hrsh7th/cmp-cmdline",
    config = function()
      local cmp = require("cmp")
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline({
          -- 关键：只有“确实选中了某个候选”才确认，否则回车原样执行 :q
          ["<CR>"] = cmp.mapping(function(fallback)
            if cmp.visible() and cmp.get_selected_entry() then
              cmp.confirm({ select = false })
            else
              fallback()
            end
          end, { "c" }),
        }),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })
    end,
  },
}